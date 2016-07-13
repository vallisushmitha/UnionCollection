//
//  SignUpViewController.swift
//  DemoProgram
//
//  Created by kvanaMini1 on 12/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstnameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var dobTF: UITextField!
    
    @IBAction func createBtn(sender: AnyObject) {
        
        var firstname = firstnameTF.text
        var email = emailTF.text
        var password = passwordTF.text
        var dob = dobTF.text


        
        
        if(firstname!.isEmpty || email!.isEmpty || password!.isEmpty || dob!.isEmpty){
            
            var myalert = UIAlertController(title: "Alert", message: "All fields are required to fill", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            myalert.addAction(okAction)
            
            self.presentViewController(myalert,animated: true, completion: nil)
            return
        }
 }
   
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "nature_background.jpg")!)
        self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2;
        self.userImage.clipsToBounds = true;
        self.userImage.layer.borderWidth = 2.0;
        self.userImage.layer.borderColor = UIColor.whiteColor().CGColor
        passwordTF.secureTextEntry = true
         
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
