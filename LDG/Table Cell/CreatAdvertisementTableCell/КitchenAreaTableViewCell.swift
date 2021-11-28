//
//  КitchenAreaTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class KitchenAreaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var kitchenAreaTextField: UITextField!
    
    static let identifier = "KitchenAreaTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "KitchenAreaTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureTextField()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
    func  configureTextField() {
        kitchenAreaTextField.delegate = self
    }
}

extension KitchenAreaTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
