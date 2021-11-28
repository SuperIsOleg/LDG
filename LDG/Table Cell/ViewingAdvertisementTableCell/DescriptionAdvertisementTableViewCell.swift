//
//  DescriptionAdvertisementTableViewCell.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import UIKit

class DescriptionAdvertisementTableViewCell: UITableViewCell {
    
    static var identifier = "DescriptionAdvertisementTableViewCell"

    static func nib () -> UINib {
        
        return UINib(nibName: "DescriptionAdvertisementTableViewCell", bundle: nil)
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
