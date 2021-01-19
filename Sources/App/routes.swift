import Vapor

func routes(_ app: Application) throws {
    let authController = AuthController()
    app.post("register", use: authController.register)
    
    let loginController = LoginController()
    app.post("login", use: loginController.login)
    
    let addToBasketController = AddToBasketController()
    app.post("add", use: addToBasketController.addToBuscket)
    

}
