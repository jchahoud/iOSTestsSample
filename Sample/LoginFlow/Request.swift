//
//  APIRequest.swift
//  Sample
//
//  Created by Juliana Chahoud on 30/07/18.
//  Copyright © 2018 example. All rights reserved.
//

import Foundation

struct Request {

    let service: ServiceType

    init(service: ServiceType = Service()) {
         self.service = service
    }

    func login(email: String, password: String) -> Bool {
        let userLoggedIn = service.requestLogin(email:email, password:password)

        if userLoggedIn {
            return true
        } else {
            return false
        }
    }
}
