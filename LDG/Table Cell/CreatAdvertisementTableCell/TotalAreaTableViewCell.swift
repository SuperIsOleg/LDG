//
//  TotalAreaTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit
import RxRelay
import RxCocoa

class TotalAreaTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }
    
    @IBOutlet weak var totalAreaField: UITextField!
    
    static let identifier = "TotalAreaTableViewCell"
    
    static func nib () -> UINib {
        return UINib(nibName: "TotalAreaTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureTextField()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//        self.selectionStyle = .none
        
        if selected {
            totalAreaField.becomeFirstResponder()
        } else {
            totalAreaField.resignFirstResponder()
        }
        
        // Configure the view for the selected state
    }

    func  configureTextField() {
        totalAreaField.delegate = self
        totalAreaField.addTarget(self, action: #selector(textChange(_:)), for: .editingChanged)
    }
    
    @objc func textChange(_ sender: UITextField) {
        clouser(sender.text ?? "")
    }

}


extension TotalAreaTableViewCell: UITextFieldDelegate {
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
    
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
