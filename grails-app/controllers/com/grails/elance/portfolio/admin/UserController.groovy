package com.grails.elance.portfolio.admin

import com.grails.custom.security.Role
import com.grails.custom.security.User
import com.grails.custom.security.UserRole
import com.grails.elance.portfolio.Portfolio
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.userdetails.GrailsUser

class UserController {
    def springSecurityService
    @Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
    def index() {
        redirect(action: 'profile')
    }
    @Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
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
        render(view: '/admin/profile',model: [user:user])
    }
    @Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
    def edit() {
        GrailsUser loggedUser = springSecurityService.principal
        if(!loggedUser){
            redirect(controller: 'login')
        }
        User user = User.read(loggedUser.id)
        if(!user){
            redirect(controller: 'login')
        }
        //show profile information with update link of profile
        render(view: '/admin/editProfile',model: [user:user])
    }

    /*@Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
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
    }*/
    @Secured(['ROLE_SUPER_ADMIN','ROLE_ADMIN'])
    def save(){
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
        User savedUser = user.save(flash:true)
        springSecurityService.reauthenticate savedUser.username
        flash.message = "Profile Updated successfully"
        redirect(action: 'profile')
    }

    @Secured(['ROLE_SUPER_ADMIN'])
    def list() {
        def loggedUser = springSecurityService.principal
        def userList = User.findAllByUsernameNotEqual(loggedUser.username)
        render(view: '/admin/userlist', model: [userList:userList])
    }
    @Secured(['ROLE_SUPER_ADMIN'])
    def updateAdmin(Long id){
        User user = User.read(id)
        if(!user){
            redirect(action: 'list')
            return
        }
        render(view: '/admin/create',model: [user:user])
    }
    @Secured(['ROLE_SUPER_ADMIN'])
    def delete(Long id){
        User user = User.get(id)
        if(!user){
            flash.message="User not found."
            redirect(action: 'list')
            return
        }
        Collection<UserRole> userRoles = UserRole.findAllByUser(user);
        userRoles*.delete();
        user.delete()
        flash.message="User deleted successfully"
        redirect(action: 'list')
    }

    @Secured(['ROLE_SUPER_ADMIN'])
    def create() {
        //show profile information with update link of profile
        render(view: '/admin/create')
    }
    @Secured(['ROLE_SUPER_ADMIN'])
    def saveAdmin() {
        println(params)

        if (!request.method == 'POST') {
            redirect(action: 'list')
            return
        }
        if(params.id){
            User oldUser = User.get(params.getLong('id'))
            oldUser.properties = params
            if (!oldUser.validate()) {
                render (view: '/admin/create',model: [user: oldUser])
                return
            }
            flash.message = "Admin user updated successfully"
            User savedUser = oldUser.save(flash:true)
            redirect(action: 'list')
            return
        }
            User newUser = new User(params)
            newUser.lastLogin=new Date();
            if (!newUser.validate()) {
                render (view: '/admin/create',model: [user: newUser])
                return
            }

        User savedUser = newUser.save()
        if (!savedUser) {
            render (view: '/admin/create',model: [user: savedUser])
            return
        }

        Role adminRole = Role.findByAuthority('ROLE_ADMIN');
        new UserRole(user: savedUser,role: adminRole).save()
        flash.message = "Admin user created successfully"
        redirect(action: 'list')
    }
    @Secured(['permitAll'])
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



}
