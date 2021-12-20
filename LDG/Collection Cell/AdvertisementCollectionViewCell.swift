//
//  AdvertisementCollectionViewCell.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import UIKit
import RxSwift
import RxRelay
import RxCocoa
import RealmSwift

class AdvertisementCollectionViewCell: UICollectionViewCell {
    
    var disposeBag = DisposeBag()
    
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func likeButtonTaped(_ sender: UIButton) {
        
        if sender.isSelected == true {
            likeButton.isSelected = false
        } else if  sender.isSelected == false {
            likeButton.isSelected = true
        }
    }
   
    @IBOutlet weak var imageHouseCell: UIImageView!
    
    @IBOutlet weak var addresLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
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
        disposeBag = DisposeBag()
    }

}

