//
//  MenuViewController.swift
//  DemoProgram
//
//  Created by kvanaMini1 on 13/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit


class MenuViewController: UIViewController,SlideNavigationControllerDelegate{

    
    @IBOutlet weak var menubtn: UIBarButtonItem!
    
    @IBOutlet weak var addbtn: UIBarButtonItem!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.navigationItem.setHidesBackButton(true, animated:true);
        
     }
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func slideNavigationControllerShouldDisplayLeftMenu() -> Bool {
        return true;
    }

    
}
