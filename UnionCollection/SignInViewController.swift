//
//  SignInViewController.swift
//  DemoProgram
//
//  Created by kvanaMini1 on 12/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBAction func signInButton(sender: AnyObject) {
        var email = emailTF.text
        var password = passwordTF.text
        
        if(email!.isEmpty || password!.isEmpty){
         var myalert = UIAlertController(title: "Alert", message: "Required Fields", preferredStyle: UIAlertControllerStyle.Alert)
          let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            myalert.addAction(okAction)
            self.presentViewController(myalert,animated: true, completion: nil)
            return
            }
        let usernamestored = NSUserDefaults.standardUserDefaults().stringForKey("email")
        let passwordstored = NSUserDefaults.standardUserDefaults().stringForKey("password")
        
        if(usernamestored == email){
            if(passwordstored == password){
                //Login is succssfull
                NSUserDefaults.standardUserDefaults().setBool(true, forKey: "isUserLoggedIn")
                NSUserDefaults.standardUserDefaults().synchronize()
                
                self.dismissViewControllerAnimated(true, completion: nil)
                return
            }
        }
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "nature_background.jpg")!)
        self.userImageView.layer.cornerRadius = self.userImageView.frame.size.width / 2;
        self.userImageView.clipsToBounds = true;
        self.userImageView.layer.borderWidth = 2.0;
        self.userImageView.layer.borderColor = UIColor.whiteColor().CGColor
        
        passwordTF.secureTextEntry = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


   
    
    
    

}
