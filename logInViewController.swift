// Jake
//  logInViewController.swift
//  Youth_Sports_Manager
//
//  Created by Jake White on 3/30/15.
//  Copyright (c) 2015 app_1. All rights reserved.
//

import UIKit

class logInViewController: UIViewController
{
    
    
    @IBOutlet weak var emailTextField: UITextField!


    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var nameTextField: UITextField! //username
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBAction func logInSubmitClicked(sender: UIButton)
    {
        /*
        
        println(emailTextField.text)
        println(passwordTextField.text)
        println(nameTextField.text)
        println(phoneNumberTextField.text)
        println(firstNameTextField.text)
        println(lastNameTextField.text)
    
        */

        //self.navigationController?.popToRootViewControllerAnimated(true)
        
        
        var user = PFUser()

        user.email = emailTextField.text
        user.password = passwordTextField.text
        user.username = nameTextField.text
            
            
        // other fields can be set just like with PFObject
        user["phone_number"] = phoneNumberTextField.text
        user["first_name"] = firstNameTextField.text
        user["last_name"] = lastNameTextField.text
        
        
        user.signUpInBackgroundWithBlock
        {
            (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                
                // Hooray! Let them use the app now.
                //self.navigationController.popToRootViewControllerAnimated(true)
                self.navigationController?.popToRootViewControllerAnimated(true)

            } else {
                //let errorString = error.userInfo["error"] as NSString
                // Show the errorString somewhere and let the user try again.
                println("Something bad has happened")
                //check to see if user name or email has already been taken
            }
        }
        
    }

    
}
