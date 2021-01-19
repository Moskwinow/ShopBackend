//
//  AddToBasketController.swift
//  
//
//  Created by Максим Вечирко on 19.01.2021.
//

import Vapor

class AddToBasketController {
    func addToBuscket(_ req: Request)  throws -> EventLoopFuture<AddBuscketResponse> {
        guard let body = try? req.content.decode(AddBuscketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = AddBuscketResponse(result: 1, user_message: "Товары в корзине: \(body)", error_message: nil)
        
        return req.eventLoop.future(response)
        
    }
}

