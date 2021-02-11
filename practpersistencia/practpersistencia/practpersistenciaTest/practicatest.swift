//
//  practicatest.swift
//  practpersistenciaTests
//
//  Created by Ricardo Hernandez on 8/2/21.
//


import XCTest
import CoreData
@testable import practpersistencia



class practicatest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_init_DataController()  {
    
        DataController(name: "practpersistencia") {_ in
            XCTAssert(true)
        }
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

   //test para inicializar Managed Context
    
    func testInit_Notebook() {
        
        DataController(name: "practpersistencia") { (persistentContainer?) in
            guard let persistentContainer = persistentContainer else {
                
                XCTFail()
                return
            }
            let managedObjectContext = persistentContainer.viewContext
            let notebook1 = NotebookMO.createNotebook(createdAt: Date(),
                                                      title: "notebook 1",
                                                      in: managedObjectContext)
            XCTAssertNotNil(notebook1)
          }
        
    

        }

    }

