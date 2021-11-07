//
//  AlertsViewController.swift
//  LDG
//
//  Created by Home on 31.10.21.
//


import UIKit
import RxSwift
import RxCocoa
import RxSwiftExt
import RAMAnimatedTabBarController

final class AlertsViewController: BaseViewController {
    
    private var viewModel: AlertsViewModel!
    
    func bind(viewModel: AlertsViewModel) {
        self.viewModel = viewModel
        
        //            bottomButton.rx.tap
        //                .bind(onNext: viewModel.buttonTapped)
        //                .disposed(by: disposeBag)
    }
    
    override init() {
        super.init()
//        self.tabBarItem = UITabBarItem(title: "Activity",
//                                       image: UIImage(systemName: "bell"),
//                                       selectedImage: nil)
        
        self.tabBarItem = RAMAnimatedTabBarItem(title: "Alerts", image: UIImage(systemName: "bell"), tag: 1)
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipTopTransitionItemAnimations()
    }
    
    override func loadView() {
        super.loadView()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .gray
    }
    
}
