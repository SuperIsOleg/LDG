//
//  PriceTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class PriceTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }

    @IBOutlet weak var currencyField: UITextField!
    
    @IBOutlet weak var priceField: UITextField!
    
    var pickerView = UIPickerView()
    
    var currency: [String] = ["руб.", "$", "euro"]
    
    static let identifier = "PriceTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "PriceTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configureTextField()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        currencyField.inputView = pickerView
        currencyField.textAlignment = .right
        currencyField.textColor = .red
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
}

extension PriceTableViewCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currency.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currency[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currencyField.text = currency[row]
        currencyField.resignFirstResponder()
    }
    
    func  configureTextField() {
        priceField.delegate = self
        priceField.addTarget(self, action: #selector(textChange(_:)), for: .editingChanged)
        currencyField.addTarget(self, action: #selector(textChange(_:)), for: .editingChanged)
    }
    @objc func textChange(_ sender: UITextField) {
        clouser(sender.text ?? "")
    }
}

extension PriceTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
