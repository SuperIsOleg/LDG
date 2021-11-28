//
//  AdvertisementCollectionViewCell.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import UIKit

class AdvertisementCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageHouseCell: UIImageView!
    
    @IBOutlet weak var contryLabel: UILabel!
    
    @IBOutlet weak var costCell: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func buttonTaped(_ sender: UIButton) {
        likeButton.isSelected = false
        
        sender.isSelected = true
            }
    
    
    static var identifier = "AdvertisementCollectionViewCell"

    static func nib () -> UINib {
        
        return UINib(nibName: "AdvertisementCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            self.layer.shadowRadius = 9
            layer.shadowOpacity = 0.8
            layer.shadowOffset = CGSize(width: 5.0, height: 8.0)
            
            self.clipsToBounds = false
        }

    // переиспользуем ячейку
    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageHouseCell.image = nil
        self.contryLabel.text = nil
        self.costCell.text = nil
    }
    
    func setupCell(advertisement:Advertisements) {
        self.imageHouseCell.image = advertisement.image
        self.contryLabel.text = advertisement.contry
        self.costCell.text = advertisement.cost
    }

}

