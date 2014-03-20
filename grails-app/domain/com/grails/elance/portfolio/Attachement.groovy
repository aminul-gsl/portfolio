package com.grails.elance.portfolio

class Attachement {
    String name                     //Type of the uploaded file (such as pdf, txt …)
    int typeId
    int size
    String description
    String attachmentUrl
    static constraints = {
        name(nullable: false)
    }
}
