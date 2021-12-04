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
    @objc func configure(picker: @escaping () -> Void) {
        collectionView.reloadData()
        clouser = picker
        
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
    
    @IBAction func pickerButton(_ sender: Any) {
        clouser()
    }
    
//    func picker (_ sender: UIButton) {
//        clouser()
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoPickerCollectionViewCell.identifier, for: indexPath) as! PhotoPickerCollectionViewCell
//        cell.photoPickerImageButton.addTarget(self, action: #selector(picker), for: .touchUpInside)// ??????
        cell.configure()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 260, height: 200)
    }
    
}


