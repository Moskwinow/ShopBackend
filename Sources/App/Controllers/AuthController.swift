//
//  AuthController.swift
//  
//
//  Created by Максим Вечирко on 30.12.2020.
//

import Vapor

class AuthController {
    
    func register(_ req: Request)  throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
                    throw Abort(.badRequest)
                }
                
                print(body)
                
                let response = RegisterResponse(
                    result: 1,
                    user_message: "Регистрация прошла успешно! пользователь \(body.id)",
                    error_message: nil
                )
                
                return req.eventLoop.future(response)
            }
    }

