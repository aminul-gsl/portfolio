package com.grails.elance.portfolio.admin

import com.grails.custom.security.User
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser


class PortfolioController {
    def springSecurityService
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
        GrailsUser loggedUser = springSecurityService.principal
        if(!loggedUser){
            redirect(controller: 'login')
        }
        User user = User.read(loggedUser.id)
        if(!user){
            redirect(controller: 'login')
        }
        //show profile information with update link of profile
        render(view: '/portfolio/create',model: [user:user])
    }
}
