package com.grails.elance.portfolio.admin

import com.grails.custom.security.User
import com.grails.elance.portfolio.Attachment
import com.grails.elance.portfolio.Image
import com.grails.elance.portfolio.Portfolio
import com.grails.elance.portfolio.Product
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest


class ProductController {
    def springSecurityService
    def imageIndirectService

    @Secured(['permitAll'])
    def index(Long id) {
        Portfolio portfolio = Portfolio.read(id)
        if(!portfolio){
            redirect(controller: 'home',action: 'index')
        }
        def productList = Product.findAllByPortfolio(portfolio)
        render(view: 'product',model: [portfolio:portfolio, productList:productList])
    }
    @Secured(['permitAll'])
    def detail(Long id) {
        Product product = Product.read(id)
        if(!product){
            redirect(controller: 'home',action: 'index')
        }
        def imageList = Image.findAllByProduct(product)
        def attachmentList = Attachment.findAllByProduct(product)
        render(view: 'detail',model: [product:product,imageList: imageList,attachmentList: attachmentList])
    }

    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def list(Long id) {
        Portfolio portfolio = Portfolio.read(id)
        if(!portfolio){
            redirect(controller: 'portfolio',action: 'list')
        }
        def productList = Product.findAllByPortfolio(portfolio)
        render(view: '/product/list',model: [portfolio:portfolio,productList:productList])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def create(Long id){
        Portfolio portfolio = Portfolio.read(id)
        if(!portfolio){
            redirect(controller: 'portfolio',action: 'list')
        }
        //show profile information with update link of profile
        render(view: '/product/create',model: [portfolio:portfolio])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def save(ProductCommand productCommand){
        println(params)
        Portfolio portfolio = Portfolio.read(params.getLong('portfolio'))
        if(!portfolio){
            redirect(controller: 'portfolio',action: 'list')
            return
        }
        if (!request.method == 'POST') {
            redirect(controller: 'portfolio',action: 'list')
            return
        }
        if (productCommand.hasErrors()) {
            render (view: 'create',model:[portfolio: portfolio,product:productCommand])
//            redirect(action: 'create',chainModel:[portfolio: portfolioCommand])
            return
        }
        Product product
        MultipartFile uploadedFile = null
        String logoName=""
        String fileName
        String fileTobeStoredInDirPath
        String message = ""
        if(params.id){
            product = Product.get(params.getLong('id'))
            if(!product){
                flash.message="Product not found."
                redirect(action: 'list',params: [id:portfolio.id])
                return
            }
            try{
                if (request instanceof MultipartHttpServletRequest){
                    //Get the file's name from request
                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
                    uploadedFile = request.getFile(fileName)
                    if (uploadedFile.empty) {
                        logoName =product.logoName
                    }else {
                        logoName =UUID.randomUUID().toString()+".${uploadedFile.originalFilename.split("\\.")[-1]}"
                        fileTobeStoredInDirPath = grailsApplication.config.imageindirect.basePath
                        imageIndirectService.storeImage(uploadedFile,logoName)
                    }

                }
            }
            catch (Exception e){
                flash.error = 'File upload failed due to internal errors. Please try again'
                render (view: 'create',model:[portfolio: portfolio,product:productCommand])
                return

            }
            product.properties = productCommand.properties
            product.logoName=logoName
            message="Product Updated successfully"
        }else {
            try{
                if (request instanceof MultipartHttpServletRequest){
                    //Get the file's name from request
                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
                    uploadedFile = request.getFile(fileName)
                    if (uploadedFile.empty) {
                        flash.error = 'Please upload a logo image for your product'
                        render (view: 'create',model:[portfolio: portfolio,product:productCommand])
                        return
                    }else {
                        logoName =UUID.randomUUID().toString()+".${uploadedFile.originalFilename.split("\\.")[-1]}"
                        fileTobeStoredInDirPath = grailsApplication.config.imageindirect.basePath
                        //create new directory if not exist
                        File theDir = new File(fileTobeStoredInDirPath)
                        if (!theDir.exists()) {
                            theDir.mkdir()
                        }
                        imageIndirectService.storeImage(uploadedFile,logoName)
                    }
                }
            }
            catch (Exception e){
                flash.error = 'File upload failed due to internal errors. Please try again'
                render (view: 'create',model:[portfolio: portfolio,product:productCommand])
                return

            }
            product = new Product(productCommand.properties)
            product.logoName=logoName
            product.portfolio=portfolio
            message="Product Added successfully"
        }
        if (!product.validate()) {
            render (view: 'create',model:[portfolio: portfolio,product:product])
            return
        }
        if (!product.save()) {
            render (view: 'create',model:[portfolio: portfolio,product:product])
            return
        }
        flash.message = message
        redirect(action: 'list',params: [id:portfolio.id])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def edit(Long id){
        Product product = Product.read(id)
        if(!product){
            flash.message="Product not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }

        render(view: '/product/create',model: [portfolio: product.portfolio,product:product])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def delete(Long id){
        Product product = Product.read(id)
        Long portfolioId=product.portfolio.id
        if(!product){
            flash.message="Product not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        product.delete()
        flash.message="Portfolio deleted successfully"
        redirect(action: 'list',params: [id:portfolioId])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def attachment(Long id){
        Product product = Product.read(id)
        if(!product){
            flash.message="Product not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        def attachmentList = Attachment.findAllByProduct(product)
        render (view:'addAttachment',model: [product:product, attachmentList:attachmentList])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def saveAttachment(AttachmentCommand attachmentCommand){
        if (!request.method == 'POST') {
            redirect(controller: 'portfolio',action: 'list')
            return
        }
        Product product = Product.get(params.getLong('productId'))
        if(!product){
            flash.message="Product not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        def attachmentList = Attachment.findAllByProduct(product)
        if (attachmentCommand.hasErrors()) {
            render (view:'addAttachment',model: [product:product,attachment:attachmentCommand,attachmentList:attachmentList])
            return
        }
        MultipartFile uploadedFile = null
        Attachment attachment
        String type
        Long size
        String fileName
        String originalFileName
        String fileTobeStoredInDirPath
        String attachmentUrl
        String message = ""
        if(params.id){
            attachment = Attachment.get(params.getLong('id'))
            if(!attachment){
                flash.message="Attachment not found."
                redirect(action: 'list',params: [id:product?.portfolio?.id])
                return
            }
            try{
                if (request instanceof MultipartHttpServletRequest){
                    //Get the file's name from request
                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
                    uploadedFile = request.getFile(fileName)
                    if (!uploadedFile.empty) {
                        type= uploadedFile.contentType
                        size=uploadedFile.size
                        attachmentUrl=UUID.randomUUID().toString()+".${uploadedFile.originalFilename.split("\\.")[-1]}"
                        fileTobeStoredInDirPath = grailsApplication.config.imageindirect.basePath
                        imageIndirectService.storeImage(uploadedFile,attachmentUrl)

                        attachment.properties = attachmentCommand.properties
                        attachment.size=size
                        attachment.type=type
                        attachment.attachmentUrl=attachmentUrl
                        attachment.originalName=uploadedFile.originalFilename
                    } else {
                        attachment.properties = attachmentCommand.properties
                    }

                }
            }
            catch (Exception e){
                flash.error = 'File upload failed due to internal errors. Please try again'
                render (view:'addAttachment',model: [product:product,attachment:attachmentCommand,attachmentList:attachmentList])
                return

            }
            message="Attachment Updated successfully"
        }else {
            try{
                if (request instanceof MultipartHttpServletRequest){
                    //Get the file's name from request
                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
                    uploadedFile = request.getFile(fileName)
                    if (uploadedFile.empty) {
                        render (view:'addAttachment',model: [product:product,attachment:attachmentCommand,attachmentList:attachmentList])
                        return
                    }else{
                        type= uploadedFile.contentType
                        size=uploadedFile.size
                        attachmentUrl=UUID.randomUUID().toString()+".${uploadedFile.originalFilename.split("\\.")[-1]}"
                        originalFileName=uploadedFile.originalFilename
                        fileTobeStoredInDirPath = grailsApplication.config.imageindirect.basePath
                         imageIndirectService.storeImage(uploadedFile,attachmentUrl)
                    }

                }

            }
            catch (Exception e){
                flash.error = 'File upload failed due to internal errors. Please try again'
                render (view:'addAttachment',model: [product:product,attachment:attachmentCommand,attachmentList:attachmentList])
                return

            }
            attachment = new Attachment(attachmentCommand.properties)
            attachment.size=size
            attachment.type=type
            attachment.attachmentUrl=attachmentUrl
            attachment.originalName=originalFileName
            attachment.product=product
            message="Attachment Added successfully"
        }
        if (!attachment.validate()) {
            render (view:'addAttachment',model: [product:product,attachment:attachment,attachmentList:attachmentList])
            return
        }
        if (!attachment.save()) {
            render (view:'addAttachment',model: [product:product,attachment:attachment,attachmentList:attachmentList])
            return
        }
        flash.message = message
        redirect(action: 'attachment',params: [id:product?.id])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def editAttachment(Long id){
        Attachment attachment =Attachment.read(params.getLong('id'))
        if(!attachment){
            flash.message="Attachment not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        def attachmentList = Attachment.findAllByProduct(attachment.product)
        render (view:'addAttachment',model: [product:attachment.product,attachment: attachment, attachmentList:attachmentList])

    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def deleteAttachment(Long id){
        Attachment attachment =Attachment.get(params.getLong('id'))

        if(!attachment){
            flash.message="Attachment not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        Long productId= attachment.product.id
        attachment.delete()
        flash.message="Attachment deleted successfully"
        redirect(action: 'attachment',params: [id:productId])

    }
    @Secured(['permitAll'])
    def download(Long id){
        Attachment attachment= Attachment.read(id)
        if(!attachment){
            flash.message="Attachment not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        def files = new File(grailsApplication.config.imageindirect.basePath,attachment.attachmentUrl) //Full path of a file
        if (files.exists()) {
            response.setContentType("application/octet-stream")
            response.setHeader("Content-disposition", "attachment;filename=${attachment.originalName.replaceAll(' ','_')}") //Please filename must be add with its extension .jpg,.png,.pdf,.doc otherwise it cant detect the file
            response.outputStream << files.bytes
        }else {
            flash.message="Attachment not found."
            redirect(controller: 'portfolio', action: 'list')
        }

    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def image(Long id){
        Product product = Product.read(id)
        if(!product){
            flash.message="Product not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        def imageList = Image.findAllByProduct(product)
        render (view:'addImage',model: [product:product, imageList:imageList])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def saveImage(ImageCommand imageCommand){
        if (!request.method == 'POST') {
            redirect(controller: 'portfolio',action: 'list')
            return
        }
        Product product = Product.get(params.getLong('productId'))
        if(!product){
            flash.message="Product not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        def imageList = Image.findAllByProduct(product)
        if (imageCommand.hasErrors()) {
            render (view:'addImage',model: [product:product,image:imageCommand,imageList:imageList])
            return
        }
        MultipartFile uploadedFile = null
        Image image
        String type
        Long size
        String fileName
        String originalFileName
        String fileTobeStoredInDirPath
        String imageUrl
        String message = ""
        if(params.id){
            image = Image.get(params.getLong('id'))
            if(!image){
                flash.message="Image not found."
                redirect(action: 'list',params: [id:product?.portfolio?.id])
                return
            }
            try{
                if (request instanceof MultipartHttpServletRequest){
                    //Get the file's name from request
                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
                    uploadedFile = request.getFile(fileName)
                    if (!uploadedFile.empty) {
                        type= uploadedFile.contentType
                        size=uploadedFile.size
                        imageUrl=UUID.randomUUID().toString()+".${uploadedFile.originalFilename.split("\\.")[-1]}"
                        fileTobeStoredInDirPath = grailsApplication.config.imageindirect.basePath
                        imageIndirectService.storeImage(uploadedFile,imageUrl)

                        image.properties = imageCommand.properties
                        image.size=size
                        image.type=type
                        image.imageUrl = imageUrl
                        image.originalName=uploadedFile.originalFilename
                    } else {
                        image.properties = imageCommand.properties
                    }

                }
            }
            catch (Exception e){
                flash.error = 'File upload failed due to internal errors. Please try again'
                render (view:'addImage',model: [product:product,image:imageCommand,imageList:imageList])
                return

            }
            message="Image Updated successfully"
        }else {
            try{
                if (request instanceof MultipartHttpServletRequest){
                    //Get the file's name from request
                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
                    uploadedFile = request.getFile(fileName)
                    if (uploadedFile.empty) {
                        render (view:'addImage',model: [product:product,image:imageCommand,imageList:imageList])
                        return
                    }else{
                        type= uploadedFile.contentType
                        size=uploadedFile.size
                        imageUrl=UUID.randomUUID().toString()+".${uploadedFile.originalFilename.split("\\.")[-1]}"
                        originalFileName=uploadedFile.originalFilename
                        fileTobeStoredInDirPath = grailsApplication.config.imageindirect.basePath
                        imageIndirectService.storeImage(uploadedFile,imageUrl)
                    }

                }

            }
            catch (Exception e){
                flash.error = 'File upload failed due to internal errors. Please try again'
                render (view:'addImage',model: [product:product,image:imageCommand,imageList:imageList])
                return

            }
            image = new Image(imageCommand.properties)
            image.size=size
            image.type=type
            image.imageUrl=imageUrl
            image.originalName=originalFileName
            image.product=product
            message="Image Added successfully"
        }
        if (!image.validate()) {
            render (view:'addImage',model: [product:product,image:image,imageList:imageList])
            return
        }
        if (!image.save()) {
            render (view:'addImage',model: [product:product,image:image,imageList:imageList])
            return
        }
        flash.message = message
        redirect(action: 'image',params: [id:product?.id])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def editImage(Long id){
        Image image =Image.read(params.getLong('id'))
        if(!image){
            flash.message="Image not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        def imageList = Image.findAllByProduct(image.product)
        render (view:'addImage',model: [product:image.product,image: image, imageList:imageList])

    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def deleteImage(Long id){
        Image image =Image.read(params.getLong('id'))
        if(!image){
            flash.message="Image not found."
            redirect(controller: 'portfolio', action: 'list')
            return
        }
        Long productId= image.product.id
        image.delete()
        flash.message="Image deleted successfully"
        redirect(action: 'image',params: [id:productId])

    }

}
class AttachmentCommand{
    String name
    String description
    static constraints = {
        name nullable: false
        description nullable: false
    }
}
class ImageCommand{
    String name
    String description
    static constraints = {
        name nullable: false
        description nullable: false
    }
}

class ProductCommand{
    String name
    String description
    Float price
    static constraints = {
        name nullable: false
        description nullable: false
        price nullable: false
    }

}
