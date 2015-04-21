//
//  createTeamViewController.swift
//  Youth_Sports_Manager
//
//  Created by Jake White on 4/19/15.
//  Copyright (c) 2015 app_1. All rights reserved.
//

import UIKit

class createTeamViewController: UIViewController
{
    //Input Parameters
    @IBOutlet weak var teamName: UITextField!
    @IBOutlet weak var sport: UITextField!
    @IBOutlet weak var entryPassword: UITextField!
    @IBOutlet weak var clickedTest: UILabel!
    
    
    let team:PFObject = PFObject(className: "Team")
    

    
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//        
//        var query:PFQuery = PFQuery(className: "Team")
//        
//        query.getObjectInBackgroundWithId("NK4nUa3EA3")
//            {
//                (team: PFObject!, error: NSError!) -> Void in
//                if error == nil && team != nil {
//                    println(team.objectId)
//                } else {
//                    println(error)
//                }
//        }
//    }
    
        
    
    @IBAction func submitClicked(sender: AnyObject)
    {

//let team = PFInstallation.currentInstallation()
        
//        let team:PFObject = PFObject(className: "Team")
        
//        func addUniqueObject("password", "Team"){}
//        
//        team["name"] = teamName.text
//        team["password"] = entryPassword.text
//        team["sport"] = sport.text
//        team["creater"] = PFUser.currentUser()
//        

        team.setObject(self.teamName.text, forKey: "name")
        team.setObject(self.entryPassword.text, forKey: "password")
        team.setObject(PFUser.currentUser(), forKey: "creater")
        team.setObject(self.sport.text, forKey: "sport")
        
        
//        //save new team
//        
        
        
//        var teamnametext = teamName.text
        
    //    team.addUniqueObject(teamName.text, forKey: "name")
    

//        team.saveInBackgroundWithBlock{
//            (success: Bool!, error: NSError!) -> Void in
//            if (success != nil) {
//
//                println("team \(self.teamName.text) created")
//
////                func getId(){
////                    //let objectId = team.objectId as String
////                    //println(objectId)
////                    println("fuck it")
////                }
//                
//
//            } else {
//                println("creating team \(self.teamName.text) did not work")
//            }
//            
//        }
        
        var result = team.save()
       

    
        
    }


    

}
