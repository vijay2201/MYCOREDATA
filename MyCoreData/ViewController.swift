//
//  ViewController.swift
//  MyCoreData
//
//  Created by COE-008 on 01/01/20.
//  Copyright © 2020 COE-008. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController{
 var UserData: [NSManagedObject] = []
    @IBOutlet weak var firstnamefield: UITextField!
    
    
    @IBAction func SeeAllUser(_ sender: Any) {
    }
    @IBOutlet weak var lastnamefield: UITextField!
    
    
    @IBAction func saveUser(_ sender: Any) {
         self.save(firstname: firstnamefield.text!, lastname: lastnamefield.text!)
        
    }
    func save(firstname:String, lastname:String) {
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        // 1
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        // 2
        let entity =
            NSEntityDescription.entity(forEntityName: "User",
                                       in: managedContext)!
        
        let person = NSManagedObject(entity: entity,
                                     insertInto: managedContext)
        
        // 3
        person.setValue(firstnamefield.text, forKeyPath: "firstname")
        person.setValue(lastnamefield.text, forKey: "lastname")
        
        
        // 4
        do {
            try managedContext.save()
            UserData.append(person)
            
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    
    
    var appDel : AppDelegate?
    var managedContext : NSManagedObjectContext? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appDel = (UIApplication.shared.delegate as? AppDelegate)!
        self.managedContext = (self.appDel?.persistentContainer.viewContext)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
       // tableView.reloadData()
        //these steps are to show the as usual data which we are added
        //step 1
    }


}

