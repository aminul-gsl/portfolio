package com.grails.custom.portfolio

class ProductImage {
    String name
    int typeId             //Type of the image (such as jpeg, Png …)
    int size
    String description

    static constraints = {
        name(nullable: false)

    }
}
