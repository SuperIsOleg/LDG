//
//  TypeOfRoomsTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class TypeOfRoomsTableViewCell: UITableViewCell {

    static let identifier = "TypeOfRoomsTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "TypeOfRoomsTableViewCell", bundle: nil)
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
}
