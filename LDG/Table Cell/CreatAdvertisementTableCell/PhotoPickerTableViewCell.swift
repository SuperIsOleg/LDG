//
//  PhotoPickerTableViewCell.swift
//  LDG
//
//  Created by Home on 14.11.21.
//
import Photos
import PhotosUI
import UIKit

class PhotoPickerTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var clouser: (() -> Void) = {  }
    
    static let identifier = "PhotoPickerTableViewCell"
    
    @IBOutlet var collectionView: UICollectionView!
    
    static func nib () -> UINib {
        return UINib(nibName: "PhotoPickerTableViewCell", bundle: nil)
    }
    
     func configure(picker: @escaping () -> Void) {
        collectionView.reloadData()
        clouser = picker
    }
    
    func photoImageArray(array: @escaping () -> Void) {
       
       clouser = array
   }
    
  
    @IBAction func pickerButton(_ sender: Any) {
        clouser()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(PhotoPickerCollectionViewCell.nib(), forCellWithReuseIdentifier: PhotoPickerCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return images.count
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoPickerCollectionViewCell.identifier, for: indexPath) as! PhotoPickerCollectionViewCell
//        cell.photoImagePicker.image = images[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 260, height: 200)
    }
    
}

    
