//
//  PhotoPickerCollectionViewCell.swift
//  LDG
//
//  Created by Home on 14.11.21.
//

import UIKit

class PhotoPickerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var photoPickerButton: UIButton!
    
    static var identifier = "PhotoPickerCollectionViewCell"

    static func nib () -> UINib {
        
        return UINib(nibName: "PhotoPickerCollectionViewCell", bundle: nil)
    }
    
    public func configure() {
        self.photoPickerButton.contentMode = .scaleAspectFill
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
   

}
