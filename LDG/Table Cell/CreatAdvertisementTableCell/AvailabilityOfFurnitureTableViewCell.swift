//
//  AvailabilityOfFurnitureTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class AvailabilityOfFurnitureTableViewCell: UITableViewCell {
    
<<<<<<< HEAD:LDG/Table Cell/CreatAdvertisementTableCell/AvailabilityOfFurnitureTableViewCell.swift
    var clouser: ((String) -> Void) = { _ in }
=======
>>>>>>> main:LDG/Table Cell/AvailabilityOfFurnitureTableViewCell.swift
    
    @IBOutlet weak var haveButton: UIButton!
    
    @IBOutlet weak var noButton: UIButton!
    
    
    @IBAction func tapedButton(_ sender: UIButton) {
        haveButton.isSelected = false
        noButton.isSelected = false
        
        sender.isSelected = true
<<<<<<< HEAD:LDG/Table Cell/CreatAdvertisementTableCell/AvailabilityOfFurnitureTableViewCell.swift
        
        clouser(sender.currentTitle ?? "")
    }
=======
    }
    
    
    
    
>>>>>>> main:LDG/Table Cell/AvailabilityOfFurnitureTableViewCell.swift

    static let identifier = "AvailabilityOfFurnitureTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "AvailabilityOfFurnitureTableViewCell", bundle: nil)
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