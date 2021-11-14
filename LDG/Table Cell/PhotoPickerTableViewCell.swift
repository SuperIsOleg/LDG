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
    
    static let identifier = "PhotoPickerTableViewCell"
    
    @IBOutlet var collectionView: UICollectionView!
    
    static func nib () -> UINib {
        
        return UINib(nibName: "PhotoPickerTableViewCell", bundle: nil)
    }
    public func configure() {
        collectionView.reloadData()
        
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
    
    // collectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoPickerCollectionViewCell.identifier, for: indexPath) as! PhotoPickerCollectionViewCell
        cell.photoPickerImageButton.addTarget(self, action: #selector(showImagePickerController), for: .touchUpInside)
        cell.configure()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 100, height: 75)
    }
    
}

extension PhotoPickerTableViewCell:  UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @objc func showImagePickerController() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        imagePickerController.sourceType = .photoLibrary
//        present(imagePickerController, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       

        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            imageView?.image = image
        }
        
        
        
        picker.dismiss(animated: true, completion: nil)
        print("\(info)")
    }
    
    
}

