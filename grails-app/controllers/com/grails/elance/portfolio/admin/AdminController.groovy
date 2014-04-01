package com.grails.elance.portfolio.admin

import com.grails.custom.security.User
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_SUPER_ADMIN'])
class AdminController {
    def springSecurityService

    def index() {
        redirect(controller: 'user', action: 'profile')
    }
}
