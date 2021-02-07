//
//  DataController.swift
//  practpersistencia
//
//  Created by Ricardo Hernandez on 7/2/21.
//
// inicializo el CoreDate Stack
import Foundation
import CoreData

class DataController: NSObject {
    let persistentContainer: NSPersistentContainer
    
    init(name: String, completionHandler: (@escaping () -> ())) {
        self.persistentContainer = NSPersistentContainer(name: name)
        
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Couldn't load CoreData Stack, show other error messages \(error.localizedDescription)")
            }
            completionHandler()
        }
    }
}

