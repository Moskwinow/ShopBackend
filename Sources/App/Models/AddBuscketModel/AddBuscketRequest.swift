//
//  AddBuscketRequest.swift
//  
//
//  Created by Максим Вечирко on 19.01.2021.
//

import Vapor

struct  AddBuscketRequest: Content {
    var productName: String
    var amount: Int
    var quantity: Int
}
