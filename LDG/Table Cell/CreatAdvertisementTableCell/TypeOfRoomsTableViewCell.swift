//
//  TypeOfRoomsTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class TypeOfRoomsTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }

<<<<<<< HEAD:LDG/Table Cell/CreatAdvertisementTableCell/TypeOfRoomsTableViewCell.swift
=======
    
>>>>>>> main:LDG/Table Cell/TypeOfRoomsTableViewCell.swift
    @IBOutlet weak var walkThroughButton: UIButton!
    @IBOutlet weak var withASeparateEntranceButton: UIButton!
    
    @IBAction func tapedButton(_ sender: UIButton) {
        walkThroughButton.isSelected = false
        withASeparateEntranceButton.isSelected = false
        
        sender.isSelected = true
<<<<<<< HEAD:LDG/Table Cell/CreatAdvertisementTableCell/TypeOfRoomsTableViewCell.swift
        
        clouser(sender.currentTitle ?? "")
    }
    
=======
    }
    
  
    
    
    
    
>>>>>>> main:LDG/Table Cell/TypeOfRoomsTableViewCell.swift
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
