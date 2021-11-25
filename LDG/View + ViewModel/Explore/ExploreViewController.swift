//
//  ExploreViewController.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import Foundation
import RxSwift
import RxCocoa
import RxSwiftExt
import RAMAnimatedTabBarController
import RealmSwift

protocol ExploreViewControllerDelegate: AnyObject {
    func barBottonTapped()
}

struct Advertisements {
    var image:UIImage
    var contry:String
    var cost:String
}

final class ExploreViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private var collectionView: UICollectionView!
    
    weak var delegate: ExploreViewControllerDelegate?
    
    private var viewModel: ExploreViewModel!
    
    private let disposeBag = DisposeBag()
    
    var advertisements = [Advertisements]()

    func bind(viewModel: ExploreViewModel) {
        self.viewModel = viewModel
    }
    
    func setupAdvertisement() {
       let advertisement1 = Advertisements(image: UIImage(named: "image1")!, contry: "Minsk", cost: "43500 $")
        let advertisement2 = Advertisements(image: UIImage(named: "image2")!, contry: "Vitebsk", cost: "3500 $")
        let advertisement3 = Advertisements(image: UIImage(named: "image3")!, contry: "Grodno", cost: "40300 $")
        
        self.advertisements = [advertisement1, advertisement2, advertisement3]
    }
    
    override init() {
        super.init()
        self.tabBarItem = RAMAnimatedTabBarItem(title: "Explore", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipRightTransitionItemAnimations()
        
    }
    
    override func loadView() {
        super.loadView()
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(AdvertisementCollectionViewCell.nib(), forCellWithReuseIdentifier: AdvertisementCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        collectionView.frame = view.bounds
        setupAdvertisement()
        collectionView.reloadData()
    }

    @objc func barBottonTapped() {
        delegate?.barBottonTapped()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return advertisements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdvertisementCollectionViewCell.identifier, for: indexPath) as! AdvertisementCollectionViewCell
        let advertisement = advertisements[indexPath.item]
        cell.setupCell(advertisement: advertisement)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}




