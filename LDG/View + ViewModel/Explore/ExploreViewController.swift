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

final class ExploreViewController: BaseViewController  {
    
//    UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
    
//    let cells = [Advertisement]()
    
//    let realm = try! Realm()
//    var items: Results<Advertisement>!
//    
//    let advertisement = Advertisement()
//    advertisement.price = text
//    
//    try! self.realm.write {
//        self.realm.add(advertisement)
//    }
    
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return cells.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdvertisementCollectionViewCell", for: indexPath) as! AdvertisementCollectionViewCell
//
//        let advertisement = cells[indexPath.item]
//
//        cell.setupCell(advertisement: advertisement)
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
//    }
//
//    // расстояние между CollectionView
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
    
//    var collectionView = UICollectionView()
    
    private var viewModel: ExploreViewModel!
    
    private let disposeBag = DisposeBag()
    
    func bind(viewModel: ExploreViewModel) {
        self.viewModel = viewModel
        
    }
    
    override init() {
        super.init()

        self.tabBarItem = RAMAnimatedTabBarItem(title: "Explore", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipRightTransitionItemAnimations()
        
    }
    
    override func loadView() {
        super.loadView()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
//        items = realm.objects(Advertisement.self)
        
//        self.collectionView.register(UINib(nibName: "AdvertisementCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AdvertisementCollectionViewCell")
//
//        self.collectionView.dataSource = self
//        self.collectionView.delegate = self
//
        
    }
    
}




