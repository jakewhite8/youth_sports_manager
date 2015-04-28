//
//  confirmationViewController.swift
//  Youth_Sports_Manager
//
//  Created by Jake White on 4/27/15.
//  Copyright (c) 2015 app_1. All rights reserved.
//

import UIKit

class confirmationViewController: UIViewController {
    
    var currentObject : PFObject?

    @IBOutlet weak var createrObjectIdLabel: UILabel!

    @IBOutlet weak var teamNameLabel: UILabel!


    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        team = currentObejct{
            
        }
        
        var user = PFUser.currentUser()
        
        var string: String = user.objectId
        
        
        var query = PFQuery(className:"Team")
        query.whereKey("created", equalTo:string)
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                println("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                if let objects = objects as? [PFObject] {
                    for object in objects {
                        println(object.objectId)
                    }
                }
            } else {
                // Log details of the failure
                println("Error: \(error!) \(error!.userInfo!)")
            }
        }
        }

        

    
    func printShit()
    {
        self.teamNameLabel.text = "hello"
        self.createrObjectIdLabel.text = "there"
    }
}
    
    
    

