package com.grails.elance.portfolio

import com.grails.custom.security.User
import com.grails.elance.portfolio.admin.PortfolioType
import com.grails.elance.portfolio.admin.ScopeType

class Portfolio {
    String name
    PortfolioType portfolioType     //Used Enam.. List Value are (Construction. IT, Catering, Trading)
    String description
    ScopeType scope
    Date publishDate
    Date expireDate
    Date createdOn = new Date()
    String logoName

    static constraints = {

    }
}
