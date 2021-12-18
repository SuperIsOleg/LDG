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

<<<<<<< HEAD
=======
protocol ExploreViewControllerDelegate: AnyObject {
    func barBottonTapped()
}

>>>>>>> main
struct Advertisements {
    var image:UIImage
    var contry:String
    var cost:String
}

<<<<<<< HEAD

final class ExploreViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    private var collectionView: UICollectionView!
    
    var advertisements = [Advertisements]()
=======
final class ExploreViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private var collectionView: UICollectionView!
    
    weak var delegate: ExploreViewControllerDelegate?
>>>>>>> main
    
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
    
    func setupAdvertisement() {
        let advertisement1 = Advertisements(image: UIImage(named: "image1")!, contry: "Minsk", cost: "$ 43500")
        let advertisement2 = Advertisements(image: UIImage(named: "image2")!, contry: "Vitebsk", cost: "$ 35200")
        let advertisement3 = Advertisements(image: UIImage(named: "image3")!, contry: "Grodno", cost: "$ 40300")
        
        self.advertisements = [advertisement1, advertisement2, advertisement3]
    }
    
    override init() {
        super.init()
<<<<<<< HEAD
        
=======
>>>>>>> main
        self.tabBarItem = RAMAnimatedTabBarItem(title: "Explore", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipRightTransitionItemAnimations()
        
    }
    
    override func loadView() {
        super.loadView()
        
<<<<<<< HEAD
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
=======
        
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
>>>>>>> main
    
    override func viewDidAppear(_ animated: Bool) {
        collectionView.frame = view.bounds
        setupAdvertisement()
        collectionView.reloadData()
    }
<<<<<<< HEAD
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    //количество ячеек в секции
=======

    @objc func barBottonTapped() {
        delegate?.barBottonTapped()
    }
    
>>>>>>> main
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return advertisements.count
    }
    
<<<<<<< HEAD
    //настройка ячейки
=======
>>>>>>> main
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdvertisementCollectionViewCell.identifier, for: indexPath) as! AdvertisementCollectionViewCell
        let advertisement = advertisements[indexPath.item]
        cell.setupCell(advertisement: advertisement)
        return cell
<<<<<<< HEAD
=======
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
>>>>>>> main
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




