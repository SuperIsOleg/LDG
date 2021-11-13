//
//  ConditionTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class ConditionTableViewCell: UITableViewCell {

    static let identifier = "ConditionTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "ConditionTableViewCell", bundle: nil)
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
