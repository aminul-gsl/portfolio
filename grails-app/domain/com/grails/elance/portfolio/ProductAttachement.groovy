package com.grails.elance.portfolio

class ProductAttachement {

    String name                     //Type of the uploaded file (such as pdf, txt …)
    int typeId
    int size
    String description

    static constraints = {
        name(nullable: false)
    }
}
