//
//  TypeOfTransactionTableViewController.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class TypeOfTransactionTableViewCell: UITableViewCell {
  
    var clouser: ((String) -> Void) = { _ in }
   
    @IBOutlet weak var cellsButton: UIButton!
    @IBOutlet weak var changeButton: UIButton!
    
    @IBAction func buttonTaped(_ sender: UIButton) {
        
        cellsButton.isSelected = false
        changeButton.isSelected = false
        
        sender.isSelected = true
        
<<<<<<< HEAD:LDG/Table Cell/CreatAdvertisementTableCell/TypeOfTransactionTableViewCell.swift
        clouser(sender.currentTitle ?? "")
    }
=======
        var buttonTitle = sender.currentTitle
  
    }
    
    //
//    @objc func cellsButtonTapd() {
//        UIView.animate(withDuration: 1) {
//            self.cellsButtonText.isSelected = true
//        }
//
//    }
    
    
>>>>>>> main:LDG/Table Cell/TypeOfTransactionTableViewCell.swift
    
    static let identifier = "TypeOfTransactionTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "TypeOfTransactionTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
<<<<<<< HEAD:LDG/Table Cell/CreatAdvertisementTableCell/TypeOfTransactionTableViewCell.swift
=======
//        cellsButtonText.layer.cornerRadius = 16
//        cellsButtonText.addTarget(self, action: #selector(cellsButtonTapd), for: .touchUpInside)
>>>>>>> main:LDG/Table Cell/TypeOfTransactionTableViewCell.swift
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
       
        // Configure the view for the selected state
    }
    
}
