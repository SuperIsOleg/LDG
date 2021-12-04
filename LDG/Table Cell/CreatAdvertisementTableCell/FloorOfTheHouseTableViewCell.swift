//
//  FloorOfTheHouseTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class FloorOfTheHouseTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }
    
    @IBOutlet weak var floorOfHousField: UITextField!
    
    var pickerView = UIPickerView()
    
    var floorfloorOfHous: [Int] = Array(1...100)

    static let identifier = "FloorOfTheHouseTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "FloorOfTheHouseTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        floorOfHousField.inputView = pickerView
        floorOfHousField.textAlignment = .right
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
    func  configureTextField() {
        floorOfHousField.addTarget(self, action: #selector(textChange(_:)), for: .editingChanged)
    }
    
    @objc func textChange(_ sender: UITextField) {
        clouser(sender.text ?? "")
    }
    
}

extension FloorOfTheHouseTableViewCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return floorfloorOfHous.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(floorfloorOfHous[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        floorOfHousField.text = String(floorfloorOfHous[row])
        floorOfHousField.resignFirstResponder()
    }
    
}
