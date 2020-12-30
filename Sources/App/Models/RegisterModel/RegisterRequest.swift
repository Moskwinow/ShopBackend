//
//  RegisterRequest.swift
//  
//
//  Created by Максим Вечирко on 30.12.2020.
//

import Vapor

struct RegisterRequest: Content {
    var id: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
