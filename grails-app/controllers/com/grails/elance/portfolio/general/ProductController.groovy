package com.grails.elance.portfolio.general

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ProductController {

    def index() {
        render(view: 'product')
    }

    def detail() {
        render(view: 'detail')
    }
}
