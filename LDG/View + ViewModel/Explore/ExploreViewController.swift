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

struct Advertisements {
    var image:UIImage
    var contry:String
    var cost:String
}


final class ExploreViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    private var collectionView: UICollectionView!
    
    var advertisements = [Advertisements]()
    
    private var viewModel: ExploreViewModel!
    
    private let disposeBag = DisposeBag()
    
    func bind(viewModel: ExploreViewModel) {
        self.viewModel = viewModel
        
    }
    
    func setupAdvertisement() {
        let advertisement1 = Advertisements(image: UIImage(named: "image1")!, contry: "Minsk", cost: "$ 43500")
        let advertisement2 = Advertisements(image: UIImage(named: "image2")!, contry: "Vitebsk", cost: "$ 35200")
        let advertisement3 = Advertisements(image: UIImage(named: "image3")!, contry: "Grodno", cost: "$ 40300")
        
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
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        layout.collectionView?.backgroundColor = .white
        
        collectionView.register(AdvertisementCollectionViewCell.nib(), forCellWithReuseIdentifier: AdvertisementCollectionViewCell.identifier)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false // нужно ли?
        
        layout.minimumLineSpacing = 30 // расстояние между ячейками
        
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
        view.backgroundColor = .white
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Explore"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        collectionView.frame = view.bounds
        setupAdvertisement()
        collectionView.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    //количество ячеек в секции
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return advertisements.count
    }
    
    //настройка ячейки
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdvertisementCollectionViewCell.identifier, for: indexPath) as! AdvertisementCollectionViewCell
        let advertisement = advertisements[indexPath.item]
        cell.setupCell(advertisement: advertisement)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 40, height: 350)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.apartmenetSelected(index: indexPath.item)
    }
}




