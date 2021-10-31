//
//  ProfileViewController.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import RxSwift
import RxCocoa
import RxSwiftExt
import RAMAnimatedTabBarController

final class ProfileViewController: BaseViewController {
    
    private var viewModel: ProfileViewModel!
    
    func bind(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
        
        //            bottomButton.rx.tap
        //                .bind(onNext: viewModel.buttonTapped)
        //                .disposed(by: disposeBag)
    }
    
    override init() {
        super.init()
        self.tabBarItem = UITabBarItem(title: "Flights",
                                       image: UIImage(systemName: "airplane"),
                                       selectedImage: nil)
    }
    
    override func loadView() {
        super.loadView()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .blue
        
    }
    
}
