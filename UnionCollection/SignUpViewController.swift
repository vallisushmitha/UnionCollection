//
//  SignUpViewController.swift
//  DemoProgram
//
//  Created by kvanaMini1 on 12/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmpasswordTF: UITextField!
    
    
    
    @IBAction func createBtn(sender: AnyObject) {
        var email = emailTF.text
        var password = passwordTF.text
        var confirmpassword = confirmpasswordTF.text
        
        //Alert message for reqiured fields
        if(email!.isEmpty || password!.isEmpty || confirmpassword!.isEmpty){
          var myalert = UIAlertController(title: "Alert", message: "All fields are required to fill", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            myalert.addAction(okAction)
            
            self.presentViewController(myalert,animated: true, completion: nil)
            return
        }
        //Check password match
        if(password != confirmpassword){
            var myalert = UIAlertController(title: "Alert", message: "Password does not match", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            myalert.addAction(okAction)
            self.presentViewController(myalert,animated: true, completion: nil)
            return
        }
        
        //store data
        NSUserDefaults.standardUserDefaults().setObject(email, forKey: "email")
        NSUserDefaults.standardUserDefaults().setObject(password, forKey: "password")
        NSUserDefaults.standardUserDefaults().synchronize()
        //Alert for signup successfully
         var myalert = UIAlertController(title: "Alert", message: "SignUP successfully Thank you!", preferredStyle: UIAlertControllerStyle.Alert)
         let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default){ action in
         self.dismissViewControllerAnimated(true, completion: nil)
        }
        myalert.addAction(okAction)
        self.presentViewController(myalert,animated: true, completion: nil)
        return
        
 }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "nature_background.jpg")!)
        self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2;
        self.userImage.clipsToBounds = true;
        self.userImage.layer.borderWidth = 2.0;
        self.userImage.layer.borderColor = UIColor.whiteColor().CGColor
        passwordTF.secureTextEntry = true
        confirmpasswordTF.secureTextEntry = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}
