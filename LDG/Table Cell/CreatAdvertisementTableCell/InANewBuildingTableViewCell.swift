//
//  InANewBuildingTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class InANewBuildingTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }
    
    @IBOutlet weak var inANewBuildingSwitch: UISwitch!
    
    @IBAction func InANewBuildingSwitch(_ sender: UISwitch) {
        
        let noText = "Нет"
        let yesText = "Да"
        
        if inANewBuildingSwitch.isSelected == false {
            clouser(noText)
        } else if inANewBuildingSwitch.isSelected == true {
            clouser(yesText)
        }
        
    }
    
    static let identifier = "InANewBuildingTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "InANewBuildingTableViewCell", bundle: nil)
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
