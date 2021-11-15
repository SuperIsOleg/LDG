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
    
    @IBOutlet var photoPickerImageButton: UIButton!
    
   
    @IBAction func photoPickerButtonTapd(_ sender: Any) {
//        showImagePickerController()
        print("Кнопка нажата")
    }
    
    static var identifier = "PhotoPickerCollectionViewCell"

    static func nib () -> UINib {
        
        return UINib(nibName: "PhotoPickerCollectionViewCell", bundle: nil)
    }
    
    public func configure() {
        self.photoPickerImageButton.contentMode = .scaleAspectFill
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
   

}

