//
//  UnitTestExampleTests.swift
//  UnitTestExampleTests
//
//  Created by Cesar Valiente on 21/01/16.
//  Copyright © 2016 Cesar Valiente. All rights reserved.
//

import XCTest
@testable import UnitTestExample

class UnitTestExampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testLowWeight () {
        let imc = createImcModel(50, height: 1.7)
        XCTAssertEqual(imc.calculateImc(), 17.30, "Success, low weight")
    }
    
    func testNormalWeight () {
        let imc = createImcModel(60, height: 1.7)
        XCTAssertEqual(imc.calculateImc(), 20.76, "Success, normal weight")
    }
    
    func createImcModel(weight : Float, height : Float) -> ImcModel {
        let imc = ImcModel()
        imc.weight = weight
        imc.height = height
        return imc
    }
    
}
