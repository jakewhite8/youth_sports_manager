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
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }
    
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var errorMessageLabel: UILabel!

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var user = PFUser()
    
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
        
        


//        user.email = emailTextField.text
//        user.password = passwordTextField.text
//        user.username = nameTextField.text

        user.username = emailTextField.text
        user.password = passwordTextField.text
//        user.username = nameTextField.text
        
        
        
            
        // other fields can be set just like with PFObject
        user["phone_number"] = phoneNumberTextField.text
        user["first_name"] = firstNameTextField.text
        user["last_name"] = lastNameTextField.text

        
        user.signUpInBackgroundWithBlock
        {
            (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                
                // if no errors signing up log in and go to home screen
                self.user = PFUser.currentUser()
                
                PFUser.logInWithUsernameInBackground(self.emailTextField.text, password: self.passwordTextField.text)
                    {(user: PFUser!, error: NSError?)-> Void in
                        if user != nil
                        {
                            self.user = PFUser.currentUser()
                            println("successful login")
                            let home = self.storyboard?.instantiateViewControllerWithIdentifier("home") as homeScreenViewController
                            self.navigationController?.pushViewController(home, animated: true)
                        }
                        else
                        {
                            
                            println("login failed")
                            self.errorMessageLabel.text = "Email address already active"
                            self.errorMessageLabel.textColor = UIColor.redColor()
                            
                        }
                }
                
                
                // Hooray! Let them use the app now.
                //self.navigationController.popToRootViewControllerAnimated(true)
                println("successfull sign up, mr \(self.lastNameTextField.text)")

            } else {
                //let errorString = error.userInfo["error"] as NSString
                // Show the errorString somewhere and let the user try again.
                println("Something bad has happened")
                //check to see if user name or email has already been taken
                self.errorMessageLabel.text = "Email address already active"
                self.errorMessageLabel.textColor = UIColor.redColor()
            }


        }
        
//        self.user = PFUser.currentUser()
        

        

        
    }

    
}
