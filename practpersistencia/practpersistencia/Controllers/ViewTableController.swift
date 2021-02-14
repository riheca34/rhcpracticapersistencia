//
//  ViewTableController.swift
//  practpersistencia
//
//  Created by Ricardo Hernandez on 14/2/21.
//

import UIKit

class ViewTableController: UIViewController {
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator?.startAnimating()
    }
}
