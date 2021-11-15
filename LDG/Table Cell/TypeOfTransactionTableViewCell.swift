//
//  TypeOfTransactionTableViewController.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class TypeOfTransactionTableViewCell: UITableViewCell {
  
   
    @IBOutlet weak var cellsButton: UIButton!
    
//    cellsButton.addTarget(self, action: #selector(cellsButtonTapd), for: .touchUpInside)
//    
//    @objc func cellsButtonTapd() {
//        UIView.animate(withDuration: 1) {
//            self.cellsButton.setTitleColor(.red, for: .normal)
//        }
//    }
    
    
    
    static let identifier = "TypeOfTransactionTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "TypeOfTransactionTableViewCell", bundle: nil)
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellsButton.layer.cornerRadius = 16
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
       
        // Configure the view for the selected state
    }
    
}
