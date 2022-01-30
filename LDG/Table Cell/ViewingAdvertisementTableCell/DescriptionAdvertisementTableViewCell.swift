//
//  DescriptionAdvertisementTableViewCell.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import UIKit

class DescriptionAdvertisementTableViewCell: UITableViewCell {
    
    @IBOutlet weak var typeOfTransactionLabel: UILabel!
    @IBOutlet weak var numberOfRoomsLabel: UILabel!
    @IBOutlet weak var typeOfRoomsLabel: UILabel!
    @IBOutlet weak var totalAreaLabel: UILabel!
    @IBOutlet weak var kitchenAreaLabel: UILabel!
    @IBOutlet weak var balconyLabel: UILabel!
    @IBOutlet weak var ceilingHeightLabel: UILabel!
    @IBOutlet weak var availabilityOfFurnitureLabel: UILabel!
    @IBOutlet weak var floorLabel: UILabel!
    @IBOutlet weak var floorOfTheHouseLabel: UILabel!
    @IBOutlet weak var wallMaterialLabel: UILabel!
    @IBOutlet weak var yearOfConstructionLabel: UILabel!
    @IBOutlet weak var inANewBuildingLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var exchangeLabel: UILabel!
    
    static var identifier = "DescriptionAdvertisementTableViewCell"

    static func nib () -> UINib {
        
        return UINib(nibName: "DescriptionAdvertisementTableViewCell", bundle: nil)
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
