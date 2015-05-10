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
    

    
//    func isAuthenticated() -> Bool
    let next_user:PFObject = PFObject(className: "User")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        
        
        var user = PFUser.currentUser()
        
        if user != nil {
            // Do stuff with the user
            
            //Welcome
            self.firstNameLabel.text = user["first_name"] as NSString
            self.navigationItem.hidesBackButton = true;
            
        } else {
            // Show the signup or login screen
            let loggin = self.storyboard?.instantiateViewControllerWithIdentifier("loggin") as ViewController
            self.navigationController?.pushViewController(loggin, animated: true)
        }
        
        
    }
    

//    
//    var user = PFUser.currentUser()
//    
//    func checkIfLoggedIn(){
//        if user != nil {
//            // Do stuff with the user
//            
//            //Welcome
//            self.firstNameLabel.text = user["first_name"] as NSString
//            
//            
//        } else {
//            // Show the signup or login screen
//            let loggin = self.storyboard?.instantiateViewControllerWithIdentifier("loggin") as ViewController
//            self.navigationController?.pushViewController(loggin, animated: true)
//        }
//    }
    
 

    @IBAction func logOutClicked(sender: AnyObject)
    {
        PFUser.logOut()
        var currentUser = PFUser.currentUser() // this will now be nil
        
        let loggin = self.storyboard?.instantiateViewControllerWithIdentifier("loggin") as ViewController
        self.navigationController?.pushViewController(loggin, animated: true)
    }
    
}
