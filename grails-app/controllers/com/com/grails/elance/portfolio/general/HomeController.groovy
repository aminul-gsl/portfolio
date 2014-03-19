package com.com.grails.elance.portfolio.general

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class HomeController {

    def index() {
    render (view: 'index')
    }
}
