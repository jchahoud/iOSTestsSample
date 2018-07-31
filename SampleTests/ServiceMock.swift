//
//  File.swift
//  SampleTests
//
//  Created by Juliana Chahoud on 30/07/18.
//  Copyright © 2018 example. All rights reserved.
//

import Foundation

@testable import Sample

class ServiceMock: ServiceType {
    var loginWithSuccess: Bool = false
    func requestLogin(email: String, password: String) -> Bool {
        return loginWithSuccess
    }
}
