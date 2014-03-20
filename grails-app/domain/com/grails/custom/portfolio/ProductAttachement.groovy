package com.grails.custom.portfolio

class ProductAttachement {

    String name                     //Type of the uploaded file (such as pdf, txt …)
    int typeId
    int size
    String description

    static constraints = {
        name(nullable: false)
    }
}
