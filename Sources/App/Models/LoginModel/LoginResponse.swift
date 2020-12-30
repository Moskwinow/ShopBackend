//
//  File.swift
//  
//
//  Created by Максим Вечирко on 31.12.2020.
//

import Vapor

struct LoginResponse: Content {
    let result: Int
    let user_massage: String?
    let error_message: String?
}
