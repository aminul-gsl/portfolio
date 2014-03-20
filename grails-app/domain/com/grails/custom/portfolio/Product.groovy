package com.grails.custom.portfolio

class Product {
    String name
    String description
    float price
    File attachement

    static constraints = {
        name(nullable: false)
    }
}
