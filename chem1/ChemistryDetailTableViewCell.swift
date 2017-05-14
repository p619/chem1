//
//   Configure the view for the selected state     }  } ChemistryDetailTableViewCell.swift
//  chem1
//
//  Created by heroshi on 2017/5/14.
//  Copyright © 2017年 heroshi. All rights reserved.
//

import UIKit

class ChemistryDetailTableViewCell: UITableViewCell {
    
        @IBOutlet var fieldLabel:UILabel!
        @IBOutlet var valueLabel:UILabel!
       // @IBAction func answerBtn(_ sender: Any) { print(fieldLabel.text) }
    
    var optionBtnS:String = ""
    var pressTimes = 0
    @IBAction func optionBtn(_ sender: UIButton) {
        pressTimes = pressTimes + 1
        if pressTimes % 2 == 0 {
            optionBtnS = fieldLabel.text!
            print(fieldLabel.text)
        }
        else {
            optionBtnS = ""
        }
        
    }
    
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            
            // Configure the view for the selected state
        }
        
}
