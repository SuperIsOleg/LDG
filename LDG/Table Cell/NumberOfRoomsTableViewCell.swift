//
//  NumberOfRoomsTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class NumberOfRoomsTableViewCell: UITableViewCell {

    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    
    
    @IBAction func tapedButton(_ sender: UIButton) {
        
        oneButton.isSelected = false
        twoButton.isSelected = false
        threeButton.isSelected = false
        fourButton.isSelected = false
        fiveButton.isSelected = false
        
        sender.isSelected = true
        
    }
    
    static let identifier = "NumberOfRoomsTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "NumberOfRoomsTableViewCell", bundle: nil)
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
}
