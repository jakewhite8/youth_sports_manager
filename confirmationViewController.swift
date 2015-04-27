//
//  confirmationViewController.swift
//  Youth_Sports_Manager
//
//  Created by Jake White on 4/27/15.
//  Copyright (c) 2015 app_1. All rights reserved.
//

import UIKit

class confirmationViewController: UIViewController {

    @IBOutlet weak var createrObjectIdLabel: UILabel!

    @IBOutlet weak var teamNameLabel: UILabel!


    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var user = PFUser.currentUser()
        
        var string = String(user.objectId as NSString)
        
        var string2 = String(user["teams"] as NSString)
        
        self.teamNameLabel.text = string2
            self.createrObjectIdLabel.text  = string
    }
    
}
