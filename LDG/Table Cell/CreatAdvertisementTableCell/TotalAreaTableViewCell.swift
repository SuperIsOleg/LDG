//
//  TotalAreaTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class TotalAreaTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var totalAreaTextField: UITextField!
    
    static let identifier = "TotalAreaTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "TotalAreaTableViewCell", bundle: nil)
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureTextField()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
    func  configureTextField() {
        totalAreaTextField.delegate = self
    }
}

extension TotalAreaTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
