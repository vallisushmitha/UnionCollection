//
//  ViewController.swift
//  UnionCollection
//
//  Created by kvanaMini1 on 13/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var welcome: UILabel!
    
    @IBOutlet weak var signUpBtn: UIButton!
    
    
    @IBAction func signInBtn(sender: AnyObject) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
        self.profileImage.clipsToBounds = true;
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "nature_background.jpg")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

