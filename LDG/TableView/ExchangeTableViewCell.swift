//
//  ExchangeTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class ExchangeTableViewCell: UITableViewCell {

    static let identifier = "ExchangeTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "ExchangeTableViewCell", bundle: nil)
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
