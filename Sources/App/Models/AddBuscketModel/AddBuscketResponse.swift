//
//  File.swift
//  
//
//  Created by Максим Вечирко on 19.01.2021.
//

import Vapor

struct AddBuscketResponse: Content {
    let result: Int
    let user_message: String?
    let error_message: String?
    
}
