package com.grails.elance.portfolio

class Product {
    String name
    String description
    float price
    String logoName
    static belongsTo = [portfolio:Portfolio]
    Date createdOn = new Date()
    static constraints = {
    }
}
