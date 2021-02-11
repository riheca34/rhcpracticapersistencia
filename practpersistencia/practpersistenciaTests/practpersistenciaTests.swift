//
//  practpersistenciaTests.swift
//  practpersistenciaTests
//
//  Created by Ricardo Hernandez on 6/2/21.
//

import XCTest
import CoreData
@testable import practpersistencia

class practpersistenciaTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_init_DataController() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        DataController: (name: "practpersistencia") {
            XCTAssert(true)
            
        }
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
