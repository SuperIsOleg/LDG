//
//  WallMaterialTableViewCell.swift
//  LDG
//
//  Created by Home on 13.11.21.
//

import UIKit

class WallMaterialTableViewCell: UITableViewCell {
    
    var clouser: ((String) -> Void) = { _ in }
    
    @IBOutlet weak var panelButton: UIButton!
    
    @IBOutlet weak var monolithButton: UIButton!
    
    @IBOutlet weak var brickButton: UIButton!
    
    @IBOutlet weak var blockyButton: UIButton!

    @IBOutlet weak var carcassButton: UIButton!
    
    @IBOutlet weak var carcassBlocklyButton: UIButton!
    
    
    @IBAction func tapedButton(_ sender: UIButton) {
        
        panelButton.isSelected = false
        monolithButton.isSelected = false
        brickButton.isSelected = false
        blockyButton.isSelected = false
        carcassButton.isSelected = false
        carcassBlocklyButton.isSelected = false
        
        sender.isSelected = true
        
        clouser(sender.currentTitle ?? "")
    }

    static let identifier = "WallMaterialTableViewCell"
    
    static func nib () -> UINib {
        
        return UINib(nibName: "WallMaterialTableViewCell", bundle: nil)
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
