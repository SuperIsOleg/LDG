//
//  PhoneNumberTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class PhoneNumberTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    static let identifier = "PhoneNumberTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "PhoneNumberTableViewCell", bundle: nil)
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
        phoneNumberTextField.delegate = self
    }
}

extension PhoneNumberTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
