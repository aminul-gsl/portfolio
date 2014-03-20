package com.grails.elance.portfolio

class Portfolio {
    String name
    int typeId     //List Value are (Construction. IT, Catering, Trading)

    String description
    boolean scope
    Date publishDate
    Date expirationsDate

    static constraints = {
        name(nullable: false)
        typeId(nullable: false)
    }
}
