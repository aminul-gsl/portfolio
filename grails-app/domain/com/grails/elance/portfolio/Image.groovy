package com.grails.elance.portfolio

class Image {
    String name                     //Type of the uploaded file (such as pdf, txt …)
    String originalName
    String type
    Long size
    String description
    String imageUrl
    static belongsTo = [product:Product]
    static constraints = {
        name(nullable: false)
    }
}
