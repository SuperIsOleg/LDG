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

final class ExploreViewController: BaseViewController {
    
    private var viewModel: ExploreViewModel!
    
    private let disposeBag = DisposeBag()
    
    func bind(viewModel: ExploreViewModel) {
        self.viewModel = viewModel
        
        //            bottomButton.rx.tap
        //                .bind(onNext: viewModel.buttonTapped)
        //                .disposed(by: disposeBag)
    }
    
    override init() {
        super.init()
        self.tabBarItem = UITabBarItem(title: "Home",
                                       image: UIImage(systemName: "house"),
                                       selectedImage: nil)
    }
    
    override func loadView() {
        super.loadView()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .purple
        
    }
    
}




