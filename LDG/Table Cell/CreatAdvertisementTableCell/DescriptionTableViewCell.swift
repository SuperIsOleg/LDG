//
//  DescriptionTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }

    @IBOutlet weak var descriptionField: UITextField!
    
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
//        super.setSelected(selected, animated: animated)
//        self.selectionStyle = .none
        // Configure the view for the selected state
        if selected {
            descriptionField.becomeFirstResponder()
        } else {
            descriptionField.resignFirstResponder()
        }
    }
    
    func  configureTextField() {
        descriptionField.delegate = self
        descriptionField.addTarget(self, action: #selector(textChange(_:)), for: .editingChanged)
    }
    @objc func textChange(_ sender: UITextField) {
        clouser(sender.text ?? "")
    }
}

extension DescriptionTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if !isSelected {
        setSelected(true, animated: false)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if isSelected {
        setSelected(false, animated: false)
        }
    }
    
}
