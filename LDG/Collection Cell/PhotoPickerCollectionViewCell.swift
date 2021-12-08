//
//  PhotoPickerCollectionViewCell.swift
//  LDG
//
//  Created by Home on 14.11.21.
//
import Photos
import PhotosUI
import UIKit
import SwiftUI

class PhotoPickerCollectionViewCell: UICollectionViewCell {
    
   
    
    @IBOutlet weak var photoImagePicker: UIImageView!
    
    static var identifier = "PhotoPickerCollectionViewCell"

    static func nib () -> UINib {
        
        return UINib(nibName: "PhotoPickerCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
   

}

