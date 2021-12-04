//
//  YearOfConstructionTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class YearOfConstructionTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }

    @IBOutlet weak var yearsOfConstructionField: UITextField!
    
    var yearsOfConstruction: [Int] = Array(1950...2021)
    
    var pickerView = UIPickerView()
    
    static let identifier = "YearOfConstructionTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "YearOfConstructionTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        yearsOfConstructionField.inputView = pickerView
        yearsOfConstructionField.textAlignment = .right
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
    func  configureTextField() {
        yearsOfConstructionField.addTarget(self, action: #selector(textChange(_:)), for: .editingChanged)
    }
    
    @objc func textChange(_ sender: UITextField) {
        clouser(sender.text ?? "")
    }
    
}

extension YearOfConstructionTableViewCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return yearsOfConstruction.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(yearsOfConstruction[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        yearsOfConstructionField.text = String(yearsOfConstruction[row])
        yearsOfConstructionField.resignFirstResponder()
    }
    
}
