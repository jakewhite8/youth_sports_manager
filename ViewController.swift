// Jake
//  ViewController.swift
//  Youth_Sports_Manager
//
//  Created by Jake White on 3/9/15.
//  Copyright (c) 2015 app_1. All rights reserved.
//

//email
//parent_name
//child_name
//team_name
//sport
//location_city
//location_state
//phone_number

import UIKit





class ViewController: UIViewController {

    
    @IBOutlet weak var incorrectLogginText: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    /*
        var userOne: PFObject = PFObject(className: "User")
        userOne["email"]            = "email@1.com"
        userOne["parent_name"]      = "brenda"
        userOne["child_name"]       = "doug"
        userOne["team_name"]        = "Buffs"
        userOne["sport"]            = "lacrosse"
        userOne["location_city"]    = "Boulder"
        userOne["location_state"]   = "Colorado"
        userOne["phone_number"]     = 9782019568
        userOne.saveInBackgroundWithBlock( { (succeeded:Bool, error:NSError! ) -> Void in })
    
    */
        
    }
    
    
    
  
    

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var logInEmailTextField: UITextField!
    
    @IBOutlet weak var logInPasswordTextField: UITextField!
    
    //println(logInEmailTextField.text)
    //println(logInPasswordTextField.text)
    

    
    @IBAction func logInSubmitClicked(sender: UIButton)
    {
        
        let mynameInput = logInEmailTextField.text
        let passwordInput = logInPasswordTextField.text
        	PFUser.logInWithUsernameInBackground(mynameInput, password: passwordInput) //log in views
        {
            (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                
                var user = PFUser.currentUser()
                
                println("logged in")
                
                let home = self.storyboard?.instantiateViewControllerWithIdentifier("home") as homeScreenViewController
                self.navigationController?.pushViewController(home, animated: true)

            } else {
                // The login failed. Check error to see why.
                self.incorrectLogginText.text = "invaid login information"
                self.incorrectLogginText.textColor = UIColor.redColor()
                
                
            }
        }
//make it so keyboard disapears after use
        self.logInPasswordTextField.resignFirstResponder()

    }
    //click out of text field --> keyboard disapoears
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

}

