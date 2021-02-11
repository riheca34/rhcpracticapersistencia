//
//  DataController.swift
//  practpersistencia
//
//  Created by Ricardo Hernandez on 7/2/21.
//
// inicializo el CoreDate Stack
import UIKit
import CoreData

class DataController: NSObject {
    let persistentContainer: NSPersistentContainer
    
    @discardableResult
    init(name: String, completionHandler: (@escaping (NSPersistentContainer?) -> ())) {
        
        self.persistentContainer = NSPersistentContainer(name: name)
        
        super.init()
        
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Couldn't load CoreData Stack, show other error messages \(error.localizedDescription)")
            }
            completionHandler(self.persistentContainer)
        }
    }
}

