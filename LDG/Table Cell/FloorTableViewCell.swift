//
//  FloorTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class FloorTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var floorTextField: UITextField!
    
    var floor: [Int] = Array(1...100)
    
    var pickerView = UIPickerView()
    
    static let identifier = "FloorTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "FloorTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        floorTextField.inputView = pickerView
        floorTextField.textAlignment = .right
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
}

extension FloorTableViewCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return floor.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(floor[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        floorTextField.text = String(floor[row])
        floorTextField.resignFirstResponder()
    }
    
}
