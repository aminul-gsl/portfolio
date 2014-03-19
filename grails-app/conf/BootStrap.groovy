import com.grails.custom.security.Role
import com.grails.custom.security.User
import com.grails.custom.security.UserRole

class BootStrap {

    def init = { servletContext ->
        createUserWithRole()
    }
    void createUserWithRole(){
        Role superAdmin = Role.findByAuthority("ROLE_SUPER_ADMIN")
        if(!superAdmin){
            superAdmin = new Role(authority: 'ROLE_SUPER_ADMIN').save()
        }
        Role admin = Role.findByAuthority("ROLE_ADMIN")
        if(!admin){
            admin = new Role(authority: 'ROLE_ADMIN').save()
        }

        User superAdminUser = User.findByUsername('suadmin')
        if(!superAdminUser){
            superAdminUser = new User(username: 'suadmin',firstName: 'Super',lastName: 'Admin',email: 'admin@gmail.com',telephone: '01930270050',lastLogin: new Date(), password: 'password', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)
            superAdminUser.save(flush: true)

            new UserRole(user: superAdminUser, role: superAdmin).save(flush: true)
        }
    }
    def destroy = {

    }
}
