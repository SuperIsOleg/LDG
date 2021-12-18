//
//  NameTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }
    
    @IBOutlet weak var nameField: UITextField!
    
    static let identifier = "NameTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "NameTableViewCell", bundle: nil)
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
            nameField.becomeFirstResponder()
        } else {
            nameField.resignFirstResponder()
        }
    }
    
    func  configureTextField() {
        nameField.delegate = self
        nameField.addTarget(self, action: #selector(textChange(_:)), for: .editingChanged)
    }
    @objc func textChange(_ sender: UITextField) {
        clouser(sender.text ?? "")
    }
}

extension NameTableViewCell: UITextFieldDelegate {
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
