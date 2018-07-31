//
//  SampleTests.swift
//  SampleTests
//
//  Created by Juliana Chahoud on 30/07/18.
//  Copyright © 2018 example. All rights reserved.
//

import XCTest
@testable import Sample

class RequestTests: XCTestCase {

    var serviceMock: ServiceMock!
    var request: Request!
    
    override func setUp() {
        super.setUp()
        serviceMock = ServiceMock()
        request = Request(service: serviceMock)
    }

    func testLoginWithSucess() {

    }

    func testLoginWithError() {

    }
}
