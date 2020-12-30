//
//  File.swift
//  
//
//  Created by Максим Вечирко on 31.12.2020.
//

import Vapor

struct LoginRequest: Content {
    var username: String = "Moskwinow"
    var password: String = "123456"
}
