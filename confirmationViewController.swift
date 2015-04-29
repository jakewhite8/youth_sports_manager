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
    
    var user = PFUser.currentUser()


    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        if var object = currentObject
        {
            self.teamNameLabel.text = object["name"] as String!
            self.createrObjectIdLabel.text = object["password"] as String!
//            println(object["objectId"])
            
            var id = object.objectId
            print(id)
//            user.setObject(object.objectId, forKey: "teams_joined")
            

        }
        

        
        
    }
    

    
//        var user = PFUser.currentUser()
//        
//        var string: String = user.objectId
//        
//        
//        var query = PFQuery(className:"Team")
//        query.whereKey("created", equalTo:string)
//        query.findObjectsInBackgroundWithBlock {
//            (objects: [AnyObject]?, error: NSError?) -> Void in
//            
//            if error == nil {
//                // The find succeeded.
//                println("Successfully retrieved \(objects!.count) scores.")
//                // Do something with the found objects
//                if let objects = objects as? [PFObject] {
//                    for object in objects {
//                        println(object.objectId)
//                    }
//                }
//            } else {
//                // Log details of the failure
//                println("Error: \(error!) \(error!.userInfo!)")
//            }
//        }
//        }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
    
    
    

