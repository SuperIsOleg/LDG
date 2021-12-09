//
//  ExchangeTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class ExchangeTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }
    
    @IBOutlet weak var exchangeSwitch: UISwitch!
    
    @IBAction func exchangeSwitch(_ sender: UISwitch) {
        
        let noText = "Нет"
        let yesText = "Да"
        
        if exchangeSwitch.isSelected == false {
            clouser(noText)
        } else if exchangeSwitch.isSelected == true {
            clouser(yesText)
        }
        
    }

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
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
}
