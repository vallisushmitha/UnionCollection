//
//  HomeViewController.swift
//  UnionCollection
//
//  Created by kvanaMini1 on 15/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func logoutbtn(sender: AnyObject) {
     NSUserDefaults.standardUserDefaults().setBool(false, forKey: "isUserLoggedIn")
        NSUserDefaults.standardUserDefaults().synchronize()
        self.performSegueWithIdentifier("homeView", sender: self)
    }
      @IBOutlet weak var collectionView: UICollectionView!
    var ImageArray = ["home","add","bullet-list","user","attachment","settingsicon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
       let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn")
        if(!isUserLoggedIn){
            self.performSegueWithIdentifier("homeView", sender: self)
        }
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImageArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: ImageArray[indexPath.row])
        
    
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let numberOfColumns: CGFloat = 4
        
        let itemWidth = (CGRectGetWidth(self.collectionView!.frame) - (numberOfColumns - 1)) / numberOfColumns
        return CGSizeMake(itemWidth, itemWidth)
        
        
    }


}
