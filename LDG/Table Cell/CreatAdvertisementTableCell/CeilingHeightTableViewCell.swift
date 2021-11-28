//
//  CeilingHeightTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class CeilingHeightTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ceilingHeightTextField: UITextField!
    
    
    static let identifier = "CeilingHeightTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "CeilingHeightTableViewCell", bundle: nil)
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
        ceilingHeightTextField.delegate = self
    }
}

extension CeilingHeightTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
