//
//  ViewController.swift
//  CoreData-Updating
//
//  Created by Matthew Sousa on 2/17/20.
//  Copyright © 2020 Matthew Sousa. All rights reserved.
//

import UIKit
import CoreData
 
class ViewController: UIViewController { 
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textFieldTwo: UITextField!
    
    @IBOutlet weak var segController: UISegmentedControl!
    
    @IBOutlet weak var displayLabelOne: UILabel!
    
    @IBOutlet weak var displayLabelTwo: UILabel!
    
    var entityName = "User"
    var context: NSManagedObjectContext
    var entity: NSEntityDescription?
    
    
    var currentUser = User()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addDoneButton(to: textField, action: nil)
        
            // inital commit
        
        configure()
    }

    func configure() {
        textField.placeholder = "username"
        textFieldTwo.placeholder = "password"
        
    }
    
    func fetchUser() {
//        let request: NSFetchRequest<User> = User.fetchRequest()
        
        
    }
    
}

