package com.grails.elance.portfolio.general

import com.grails.elance.portfolio.Portfolio
import com.grails.elance.portfolio.Product
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class HomeController {

    def index() {
        def now = new Date().clearTime()
        def portfolioList = Portfolio.withCriteria {
            le('publishDate', now)
            ge('expireDate', now)
        }
        /*def latestProduct = Product.withCriteria {
            le('publishDate', now)
            ge('expireDate', now)
        }*/
    render (view: 'index',model: [portfolioList:portfolioList])
    }
}
