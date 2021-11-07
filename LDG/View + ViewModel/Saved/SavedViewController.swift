//
//  SavedViewController.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import RxSwift
import RxCocoa
import RxSwiftExt
import RAMAnimatedTabBarController

final class SavedViewController: BaseViewController {
   
    private var viewModel: SavedViewModel!
    
    func bind(viewModel: SavedViewModel) {
        self.viewModel = viewModel
        
        //            bottomButton.rx.tap
        //                .bind(onNext: viewModel.buttonTapped)
        //                .disposed(by: disposeBag)
    }
    
    override init() {
        super.init()
//        self.tabBarItem = UITabBarItem(title: "Settings",
//                                       image: UIImage(systemName: "gear"),
//                                       selectedImage: nil)
        
        self.tabBarItem = RAMAnimatedTabBarItem(title: "Saved", image: UIImage(systemName: "heart"), tag: 1)
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
    }
    
    override func loadView() {
        super.loadView()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
    }
    
}
