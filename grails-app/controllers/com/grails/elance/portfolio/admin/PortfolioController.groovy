package com.grails.elance.portfolio.admin

import com.grails.custom.security.User
import com.grails.elance.portfolio.Portfolio
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile


class PortfolioController {
    def springSecurityService
    def imageIndirectService
    @Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
    def index() {
         redirect(action: 'list')

    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def list() {
        def portfolioList = Portfolio.findAll()
        render(view: 'list',model: [portfolioList:portfolioList])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def create(){
        //show profile information with update link of profile
        Portfolio portfolio = null
        render(view: '/portfolio/create',model: [portfolio:portfolio])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def edit(Long id){
        Portfolio portfolio = Portfolio.get(id)
        if(!portfolio){
            flash.message="Portfolio not found."
            redirect(action: 'list')
            return
        }
        render(view: '/portfolio/create',model: [portfolio:portfolio])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def save(PortfolioCommand portfolioCommand){
        if (!request.method == 'POST') {
            redirect(action: 'create')
            return
        }
        if (portfolioCommand.hasErrors()) {
            render (view: 'create',model:[portfolio: portfolioCommand])
//            redirect(action: 'create',chainModel:[portfolio: portfolioCommand])
            return
        }
        Portfolio portfolio
        MultipartFile uploadedFile = null
        String logoName=""
        String fileName
        String fileTobeStoredInDirPath
        String message = ""
        if(params.id){
            portfolio = Portfolio.get(params.getLong('id'))
            if(!portfolio){
                flash.message="Portfolio not found."
                redirect(action: 'list')
                return
            }
            try{
                if (request instanceof MultipartHttpServletRequest){
                    //Get the file's name from request
                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
                    uploadedFile = request.getFile(fileName)
                    if (uploadedFile.empty) {
                        logoName =portfolio.logoName
                    }else {
                        logoName =UUID.randomUUID().toString()+".${uploadedFile.originalFilename.split("\\.")[-1]}"
                        fileTobeStoredInDirPath = grailsApplication.config.imageindirect.basePath
                        //create new directory if not exist

                        imageIndirectService.storeImage(uploadedFile,logoName)
                    }

                }
            }
            catch (Exception e){
                flash.error = 'File upload failed due to internal errors. Please try again'
                render (view: 'create',model:[portfolio: portfolioCommand])
                return

            }
            portfolio.properties = portfolioCommand.properties
            portfolio.logoName=logoName
            message="Portfolio Updated successfully"

        }else {

            try{
                if (request instanceof MultipartHttpServletRequest){
                    //Get the file's name from request
                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
                    uploadedFile = request.getFile(fileName)
                    /*def filesize = uploadedFile.size
                    def fileD = uploadedFile.name
                    def fielDs= uploadedFile.originalFilename
                    def sodes = uploadedFile.contentType
                    println(filesize+"sedf "+ fileD+" file "+fielDs+" dws"+sodes)*/
                    logoName =UUID.randomUUID().toString()+".${uploadedFile.originalFilename.split("\\.")[-1]}"
                    fileTobeStoredInDirPath = grailsApplication.config.imageindirect.basePath
                    //create new directory if not exist
                    File theDir = new File(fileTobeStoredInDirPath)
                    if (!theDir.exists()) {
                        theDir.mkdir()
                    }
                    imageIndirectService.storeImage(uploadedFile,logoName)
                }
                if (uploadedFile.empty) {
                    flash.error = 'Please upload a logo image for your portfolio'
                    render (view: 'create',model:[portfolio: portfolioCommand])
                    return
                }


            }
            catch (Exception e){
                flash.error = 'File upload failed due to internal errors. Please try again'
                render (view: 'create',model:[portfolio: portfolioCommand])
                return

            }
            portfolio = new Portfolio(portfolioCommand.properties)
            portfolio.logoName=logoName
            message="Portfolio Added successfully"
        }


        if (!portfolio.validate()) {
            render (view: 'create',model:[portfolio: portfolio])
            return
        }
        if (!portfolio.save()) {
            render (view: 'create',model:[portfolio: portfolio])
            return
        }
        flash.message = message
        redirect(action: 'list')

    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def delete(Long id){
        Portfolio portfolio = Portfolio.get(id)
        if(!portfolio){
            flash.message="Portfolio not found."
            redirect(action: 'list')
            return
        }
        portfolio.delete()
        flash.message="Portfolio deleted successfully"
        redirect(action: 'list')
    }
}
class PortfolioCommand{
    Long id
    String name
    PortfolioType portfolioType     //Used Enam.. List Value are (Construction. IT, Catering, Trading)
    String description
    ScopeType scope
    Date publishDate
    Date expireDate
    String logoName
    static constraints = {
        scope  validator: {val, obj ->
            if (!val){
                return "portfolio.scope.required.message"
            }
        }
    }

}
