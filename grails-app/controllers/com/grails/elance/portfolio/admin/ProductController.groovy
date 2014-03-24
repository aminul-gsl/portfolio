package com.grails.elance.portfolio.admin

import com.grails.custom.security.User
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser



class ProductController {
    def springSecurityService

    @Secured(['permitAll'])
    def index() {
        render(view: 'product')
    }
    @Secured(['permitAll'])
    def detail() {
        render(view: 'detail')
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
        render(view: '/product/list',model: [user:user])
    }
    @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
    def create(){
        GrailsUser loggedUser = springSecurityService.principal
        if(!loggedUser){
            redirect(controller: 'login')
        }
        User user = User.read(loggedUser.id)
        if(!user){
            redirect(controller: 'login')
        }
        //show profile information with update link of profile
        render(view: '/product/create',model: [user:user])
    }

}
