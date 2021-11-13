//
//  TypeOfTransactionTableViewController.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class TypeOfTransactionTableViewCell: UITableViewCell {
  
    @IBAction func saleButton(_ sender: Any) {
    }
    
    @IBAction func changeButton(_ sender: Any) {
    }
    
    static let identifier = "typeOfTransactionTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "typeOfTransactionTableViewCell", bundle: nil)
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
