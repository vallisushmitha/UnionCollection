//
//  CustomCell.swift
//  DemoProgram
//
//  Created by kvanaMini1 on 13/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var menusLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
