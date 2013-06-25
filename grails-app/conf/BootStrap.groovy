import com.taskin.auth.Role
import com.taskin.auth.User
import com.taskin.auth.UserRole

class BootStrap {
    def bootstrapService
    def init = { servletContext ->
        bootstrapService.doBootStrapUsers()
        bootstrapService.doBootStrapRoles()
        bootstrapService.doBootStrapProjects()
    }
    def destroy = {
    }
}
