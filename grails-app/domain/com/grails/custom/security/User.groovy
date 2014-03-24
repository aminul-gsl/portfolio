package com.grails.custom.security

class User {

	transient springSecurityService

	String username
    //new fields
    String  firstName
    String lastName
    String email
    String telephone
    Date lastLogin

	String password
	boolean enabled     //ACTIVE, DISABLED
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username size: 1..50, blank: false, unique: true
		password blank: false
        email email:true
        lastLogin nullable: true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
