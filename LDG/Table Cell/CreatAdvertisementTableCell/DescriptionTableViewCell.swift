//
//  DescriptionTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionTextField: UITextField!
    
    static let identifier = "DescriptionTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "DescriptionTableViewCell", bundle: nil)
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
        descriptionTextField.delegate = self
    }
}

extension DescriptionTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
