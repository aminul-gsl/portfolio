package com.grails.elance.portfolio.admin

/**
 * http://stackoverflow.com/questions/11126340/using-value-of-enum-in-gselect-when-enum-is-attribute-of-selection-object
 * Created by aminul haque on 3/19/14.
 */
public enum PortfolioType {
    CONSTRUCTION("Construction"),
    IT("IT"),
    CATERING("Catering"),
    TRADING("Trading")

    final String value
    PortfolioType(String value) {
        this.value = value
    }
    String toString() { value }
    String getKey() { name() }
}