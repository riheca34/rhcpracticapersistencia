//
//  NotebookMO.swift
//  practpersistencia
//
//  Created by Ricardo Hernandez on 11/2/21.
//

import Foundation
import CoreData

public class NotebookMO: NSManagedObject {
    
    
    static func createNotebook(createdAt: Date,
                               title: String,
                               in  managedObjectContext: NSManagedObjectContext) -> NotebookMO?{
        let notebook = NSEntityDescription.insertNewObject(forEntityName: "Notebook", into: managedObjectContext) as? NotebookMO
        
        notebook?.createdAt = createdAt
        notebook?.title = title
        return notebook
    }
}
