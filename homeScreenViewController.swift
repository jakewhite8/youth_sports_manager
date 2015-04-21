//
//  homeScreenViewController.swift
//  Youth_Sports_Manager
//
//  Created by Jake White on 4/11/15.
//  Copyright (c) 2015 app_1. All rights reserved.
//

import UIKit

class homeScreenViewController: UIViewController {
    
    

    @IBOutlet weak var firstNameLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        var user = PFUser.currentUser()
        
        //testing user identity
        self.firstNameLabel.text = user["first_name"] as NSString
        
    }

    
}
