//
//  AdvertisementCollectionViewCell.swift
//  LDG
//
<<<<<<< HEAD
//  Created by Home on 28.11.21.
=======
//  Created by Home on 21.11.21.
>>>>>>> main
//

import UIKit

class AdvertisementCollectionViewCell: UICollectionViewCell {
    
<<<<<<< HEAD
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func likeButtonTaped(_ sender: UIButton) {
        
        if sender.isSelected == true {
            likeButton.isSelected = false
        } else if  sender.isSelected == false {
            likeButton.isSelected = true
        }
        
    }
    
    
=======
>>>>>>> main
    
    @IBOutlet weak var imageHouseCell: UIImageView!
    
    @IBOutlet weak var contryLabel: UILabel!
    
    @IBOutlet weak var costCell: UILabel!
    
    
<<<<<<< HEAD
=======

>>>>>>> main
    static var identifier = "AdvertisementCollectionViewCell"

    static func nib () -> UINib {
        
        return UINib(nibName: "AdvertisementCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
<<<<<<< HEAD
        // Initialization code
        
    }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            self.layer.shadowRadius = 9
            layer.shadowOpacity = 0.8
            layer.shadowOffset = CGSize(width: 5.0, height: 8.0)
            
            self.clipsToBounds = false
        }

=======
        imageHouseCell.layer.cornerRadius = 20
        // Initialization code
        
    }
    
>>>>>>> main
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
<<<<<<< HEAD

=======
>>>>>>> main
