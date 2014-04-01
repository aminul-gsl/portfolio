package com.grails.elance.portfolio.admin

/**
 * Created by aminul on 4/1/2014.
 */
enum ScopeType {
    Public("Public"),
    Private("Private")

    final String value
    final String name
    ScopeType(String value) {
        this.value = value
    }
    String toString() { value }
    String getKey() { name() }
}
