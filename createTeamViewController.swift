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

    
    
    let team:PFObject = PFObject(className: "Team")
    
    var user = PFUser.currentUser()
    
    
    override func viewDidLoad()
    {

    }
    
    //in a storyboard-base application you will often want to do a little prepartation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //get the new view controller using [segue destinationViewcontroller]
        var detailScene = segue.destinationViewController as confirmationViewController
        
        
        
        detailScene.currentObject = team
        
    }
    
    @IBAction func submitClicked(sender: AnyObject)
        {
            

            
            team.setObject(self.teamName.text, forKey: "name")
            team.setObject(self.entryPassword.text, forKey: "password")
            team.setObject(PFUser.currentUser(), forKey: "manager") //manager
            team.setObject(self.sport.text, forKey: "sport")
            team.addObject(user.objectId, forKey: "members")
            //user.setObject(team.objectId, forKey: "teams_joined") //add to list of teams user is a part of
            user.addObject(["again_shall_we", "how about it"], forKey: "teams")
            
            //        //save new team
            //
            
            
            
            //        var teamnametext = teamName.text
            
            //    team.addUniqueObject(teamName.text, forKey: "name")
            
            
            team.saveInBackgroundWithBlock{
                (success: Bool!, error: NSError!) -> Void in
                if (success != nil) {
//                    var id = self.team.objectId
//                    print(id)
//                    self.user.setObject(id, forKey: "teams_on")
                    println("team \(self.teamName.text) created")
                    
                    
                } else {
                    println("creating team \(self.teamName.text) did not work")
                }
                
                println("team id: \(self.team.objectId)")



                
            }
            
            //        var result = team.save()

            
            
            
            }
    




    

}
