package com.grails.elance.portfolio

class ProductImage {
    String name
    String type             //Type of the image (such as jpeg, Png …)
    int size
    String description
    String imageUrl

    static constraints = {
        name(nullable: false)

    }
}
