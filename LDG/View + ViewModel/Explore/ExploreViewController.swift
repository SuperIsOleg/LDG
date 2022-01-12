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

final class ExploreViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    private var collectionView: UICollectionView!
    
    private var viewModel: ExploreViewModel!
    
    private let disposeBag = DisposeBag()
    
    private lazy var refreshControl = UIRefreshControl(frame: .zero, primaryAction: UIAction(handler: { [weak self] _ in
        self?.viewModel.refresh()
    }))
    
    func bind(viewModel: ExploreViewModel) {
        self.viewModel = viewModel
        
        viewModel.cells
            .do(onNext: { [weak self] _ in
                self?.refreshControl.endRefreshing()
            })
                .drive(collectionView.rx.items(cellIdentifier: AdvertisementCollectionViewCell.identifier, cellType: AdvertisementCollectionViewCell.self)) { index, model, cell in
                    cell.addresLabel.text = model.addres
                    cell.priceLabel.text = model.price
                    cell.likeButton.rx.tap
                        .bind(onNext: viewModel.likeButtonTaped)
                        .disposed(by: cell.disposeBag)
            }
            .disposed(by: disposeBag)
    }
    
    override init() {
        super.init()
        self.tabBarItem = RAMAnimatedTabBarItem(title: nil, image: UIImage(systemName: "magnifyingglass"), tag: 1)
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipRightTransitionItemAnimations()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        layout.collectionView?.backgroundColor = .white
        layout.minimumLineSpacing = 30 // расстояние между ячейками
    }
    
    override func loadView() {
        super.loadView()
        collectionView.register(AdvertisementCollectionViewCell.nib(), forCellWithReuseIdentifier: AdvertisementCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false // нужно ли?
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
        view.backgroundColor = .white
       
        collectionView.refreshControl = refreshControl
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Explore"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        collectionView.frame = view.bounds
        collectionView.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    //количество ячеек в секции
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////        return advertisements.count
//        return viewModel.cells.count
//    }
    
    //настройка ячейки
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdvertisementCollectionViewCell.identifier, for: indexPath) as! AdvertisementCollectionViewCell
//        let advertisement = advertisements[indexPath.item]
//        cell.setupCell(advertisement: advertisement)
//        return cell
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 40, height: 350)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.apartmenetSelected(index: indexPath.item)
    }
}









