//
//  ImageCollectionViewCell.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewAdvertisement: UIImageView!
    
    
    static var identifier = "ImageCollectionViewCell"

    static func nib () -> UINib {
        
        return UINib(nibName: "ImageCollectionViewCell", bundle: nil)
    }
    
    public func configure() {
        self.imageViewAdvertisement.contentMode = .scaleAspectFill
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
   

}
