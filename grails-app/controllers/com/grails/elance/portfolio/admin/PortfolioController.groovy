package com.grails.elance.portfolio.admin

import com.grails.custom.security.User
import com.grails.elance.portfolio.Portfolio
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser
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
        GrailsUser loggedUser = springSecurityService.principal
        if(!loggedUser){
            redirect(controller: 'login')
        }
        User user = User.read(loggedUser.id)
        if(!user){
            redirect(controller: 'login')
        }
        //show profile information with update link of profile
        render(view: '/portfolio/list',model: [user:user])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def create(){
        //show profile information with update link of profile
        Portfolio portfolio = null
        render(view: '/portfolio/create',model: [portfolio:portfolio])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def attachment(){
        render (view:'attachment')
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def saveAttachment(){
        println("hello")
        String clientID=Integer.toString(10003)
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
        CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("document")
        def originalFilename=file.originalFilename
        originalFilename = originalFilename.replaceAll(" ", "-")
        imageIndirectService.storeImage(file,clientID+originalFilename)
        def clientImage="/clientPhotos/" + clientID+"/"+originalFilename

        def result=[success:true , imagePath:clientImage]
        render result as JSON
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def download(){
        def url=params.url
        println(grailsApplication.config.imageindirect.basePath+params.url);
        def files = new File(grailsApplication.config.imageindirect.basePath+params.url) //Full path of a file
        if (files.exists()) {
            response.setContentType("application/octet-stream")
            response.setHeader("Content-disposition", "attachment;filename=Picture.jpg") //Please filename must be add with its extension .jpg,.png,.pdf,.doc otherwise it cant detect the file
            response.outputStream << files.bytes
        } else {
            println("I am not a file")
            render(view: 'attachment')
        }
    }
}
