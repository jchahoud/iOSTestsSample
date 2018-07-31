//
//  APIRequest.swift
//  Service
//
//  Created by Juliana Chahoud on 30/07/18.
//  Copyright © 2018 example. All rights reserved.
//

import Foundation

protocol ServiceType {
    func requestLogin(email: String, password: String) -> Bool
}

class Service: ServiceType {
    func requestLogin(email: String, password: String) -> Bool {
        if (email == "suzy@email.com" && password == "123456") {
            return true
        } else {
            return false
        }
    }
}
