//
//  File.swift
//  
//
//  Created by Максим Вечирко on 31.12.2020.
//

import Vapor

class LoginController {
    
    var response: LoginResponse!
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body.username)
        let userRequest = LoginRequest()
        if body.username == userRequest.username && body.password == userRequest.password {
            response = LoginResponse(
                result: 1,
                user_massage: "Вы авторизировались под ником \(body.username)",
                error_message: nil
            )
        } else {
             response = LoginResponse(
                result: 0,
                user_massage: nil,
                error_message: "Пользователь под ником \(body.username) не существует или вы ввели не верный пароль"
            )
        }
        
        return req.eventLoop.future(response)
    
    }
}
