package com.grails.elance.portfolio.admin

import com.grails.custom.security.User
import grails.plugin.springsecurity.annotation.Secured

class AdminController {

    @Secured(['ROLE_SUPER_ADMIN'])
    def index() {
        render (view:'/admin/userlist')
    }
    @Secured(['ROLE_SUPER_ADMIN'])
    def save(){
        User user=new User()
      List<User> userList=User.findAllByUsername(params.userName)
        if(userList.size()>0){
            flash.message = "User Name already exist!"
            render (view:'/admin/userlist')
        } else{
        user.username=params.userName
        user.firstName=params.firstName
        user.lastName=params.lastName
        user.email=params.email
        user.telephone=params.tel
        user.lastLogin=new Date()
        user.password=params.password
        user.enabled=params.enabled

        if(!user.save())   {
            render (view:'/admin/userlist')
        }else{
            flash.message = "User Created successfully"
            render (view:'/dashboard/index')
        }
    }
    }
}
