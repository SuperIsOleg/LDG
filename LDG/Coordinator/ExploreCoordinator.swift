//
//  ExploreCoordinator.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import RxSwift
import RAMAnimatedTabBarController

class ExploreCoordinator: CoordinatorType {
    
    private let disposeBag = DisposeBag()
    let navigationController = UINavigationController(rootViewController: UIViewController())
    let tabController = RAMAnimatedTabBarController()
    
    func start() -> UIViewController {
           navigationController.setViewControllers([tabController], animated: false)
           tabController.setViewControllers([showExploreScreen(), showSavedScreen(), showCreatAdvertisementScreen()], animated: false)
           return navigationController
       }       
    
    func showExploreScreen() -> UIViewController {
        let viewController = ExploreViewController()
        let viewModel = ExploreViewModel()
        viewController.bind(viewModel: viewModel)
        viewModel.route.emit(onNext: { [weak self] route in
            guard let self = self else {
                return
            }
            switch route {
            case .button: break
        case .viewingAdvertisement: self.navigationController.pushViewController(self.showViewingAdvertisementScreen(), animated: true)
                
            }
        } ).disposed(by: disposeBag)
       
        return viewController
    }
    
    func showSavedScreen() -> UIViewController {
        let viewController = SavedViewController()
        let viewModel = SavedViewModel()
        viewController.bind(viewModel: viewModel)
        
        return viewController
    }
    
    func showCreatAdvertisementScreen() -> UIViewController {
        let viewController = CreatAdvertisementViewController()
        let viewModel = CreatAdvertisementViewModel()
        viewController.bind(viewModel: viewModel)
        
        return viewController
    }
    
    func showViewingAdvertisementScreen() -> UIViewController {
        let viewController = ViewingAdvertisementViewController()
        let viewModel = ViewingAdvertisementViewModel()
        viewController.bind(viewModel: viewModel)

        return viewController
    }
  
    
}
