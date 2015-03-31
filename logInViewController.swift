//
//  logInViewController.swift
//  Youth_Sports_Manager
//
//  Created by Jake White on 3/30/15.
//  Copyright (c) 2015 app_1. All rights reserved.
//

import UIKit

class logInViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!


    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    
    
    @IBAction func logInSubmitClicked(sender: UIButton) {
        println(emailTextField.text)
        println(passwordTextField.text)
        println(nameTextField.text)
       // println(phoneNumberTextField.text)
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        
        var user = PFUser()

        user.email = emailTextField.text
        user.password = passwordTextField.text
        user.username = phoneNumberTextField.text
            
            
        // other fields can be set just like with PFObject
       // user["phone_number"] = phoneNumberTextField.text
        
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                // Hooray! Let them use the app now.
                //self.navigationController.popToRootViewControllerAnimated(true)
                self.navigationController?.popToRootViewControllerAnimated(true)
            } else {
                //let errorString = error.userInfo["error"] as NSString
                // Show the errorString somewhere and let the user try again.
                println("Shit went down")
            }
        }
        
    }

    
}
