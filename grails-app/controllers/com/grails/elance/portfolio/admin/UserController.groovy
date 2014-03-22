package com.grails.elance.portfolio.admin

import com.grails.custom.security.Role
import com.grails.custom.security.User
import com.grails.custom.security.UserRole
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser

class UserController {
    def springSecurityService
    @Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
    def index() {
        redirect(action: 'profile')
    }
    @Secured(['ROLE_ADMIN'])
    def profile() {
        GrailsUser loggedUser = springSecurityService.principal
        if(!loggedUser){
            redirect(controller: 'login')
        }
        User user = User.read(loggedUser.id)
        if(!user){
            redirect(controller: 'login')
        }
        //show profile information with update link of profile
        render(view: 'profile',model: [user:user])
    }
    @Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
    def update(){
        GrailsUser loggedUser = springSecurityService.principal
        if(!loggedUser){
            redirect(controller: 'login')
        }
        User user = User.read(params.getLong('id'))
        if(!user){
            redirect(controller: 'login')
        }
        //show profile in edit mode with editable fields only
        render(view: 'profileEdit',model: [user:user])
    }
    @Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
    def save(){
        GrailsUser loggedUser = springSecurityService.principal
        if(!loggedUser){
            redirect(controller: 'login')
        }
        if (!request.method == 'POST') {
            redirect(action: 'profile')
        }
        if (!params.id){
            redirect(action: 'profile')
        }
        User user = User.get(params.getLong('id'))
        if(!user){
            redirect(action: 'profile')
        }
        //map user updated properties
        user.properties = params
        if (!user.validate()) {
            render (view: 'profileEdit',model: [user: user])
            return
        }
        //save user
        User savedUser = user.save()
        if(SpringSecurityUtils.ifAnyGranted('ROLE_SUPER_ADMIN')){
            flash.message = "User Updated successfully"
            redirect(action: 'list')
            return
        }
        flash.message = "Profile Updated successfully"
        render(view: 'profile',model: [user:savedUser])
    }

    @Secured(['ROLE_SUPER_ADMIN'])
    def list() {
        //will show User list including Create New User button and edit/delete existing user
        render (view:'listUser')
    }
    @Secured(['ROLE_SUPER_ADMIN'])
    def create() {
        //show User Create form
        render (view:'/admin/registration')
    }
    @Secured(['ROLE_SUPER_ADMIN'])
    def saveAdmin() {
        GrailsUser loggedUser = springSecurityService.principal
        if(!loggedUser){
            redirect(controller: 'login')
            return
        }

        if (!request.method == 'POST') {
            redirect(action: 'list')
            return
        }
        if (!params.username){
            flash.message = "Please fill all required fields"
            render (view:'/admin/registration')
            return
        }
        User user = new User(params)
        user.lastLogin=new Date();
        if (!user.validate()) {
            render (view: '/admin/registration',model: [user: user])
            return
        }
        //save user
        User savedUser = user.save()
        if (!savedUser) {
            flash.message = "Unable to save admin User"
            render (view: '/admin/registration',model: [user: user])
            return
        }

        Role adminRole = Role.findByAuthority('ROLE_ADMIN');
        new UserRole(user: savedUser,role: adminRole).save()
        flash.message = "Admin user created successfully"
        redirect(action: 'list')
    }

    def checkAvailable(String userName){
        def available
        if( User.findByUsername(userName) ) {
            available = false
        } else {
            available = true
        }
        response.contentType = "application/json"
        render """{"available":${available}}"""
    }


        @Secured(['ROLE_ADMIN','ROLE_SUPER_ADMIN'])
        def showRegistration(){
            GrailsUser loggedUser = springSecurityService.principal
            if(!loggedUser){
                redirect(controller: 'login')
            }
            User user = User.read(loggedUser.id)
            if(!user){
                redirect(controller: 'login')
            }
            //show profile information with update link of profile
            render(view: '/admin/create',model: [user:user])
        }
}
