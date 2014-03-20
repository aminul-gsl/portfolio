package com.grails.elance.portfolio

import com.grails.elance.portfolio.admin.PortfolioType

class Portfolio {
    String name
    PortfolioType portfolioType     //Used Enam.. List Value are (Construction. IT, Catering, Trading)
    String description
    boolean scope
    Date publishDate
    Date expirationsDate

    static constraints = {
        //fields are by default nullable false.
//        name(nullable: false)
    }
}
