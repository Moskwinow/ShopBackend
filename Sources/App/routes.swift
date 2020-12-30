import Vapor

func routes(_ app: Application) throws {
    let authController = AuthController()
    app.post("register", use: authController.register)
    
    let loginController = LoginController()
    app.post("login", use: loginController.login)

}
