//
//  PriceTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class PriceTableViewCell: UITableViewCell {

   
    @IBOutlet weak var currencyTextField: UITextField!
    
    var pickerView = UIPickerView()
    
    var currency: [String] = ["руб.", "$", "евро"]
    
    static let identifier = "PriceTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "PriceTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        currencyTextField.inputView = pickerView
        currencyTextField.textAlignment = .right
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
        currencyTextField.text = currency[row]
        currencyTextField.resignFirstResponder()
    }
    
}
