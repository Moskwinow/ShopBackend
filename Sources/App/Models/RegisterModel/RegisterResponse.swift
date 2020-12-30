//
//  RegisterResponse.swift
//  
//
//  Created by Максим Вечирко on 30.12.2020.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
