package com.grails.elance.portfolio

class Product {
    String name
    String description
    float price
    File attachement

    static constraints = {
        name(nullable: false)
    }
}
