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
//        let nav = UINavigationController(rootViewController: viewController)
        
        viewController.bind(viewModel: viewModel)
//        viewModel.route.emit { <#()#> in
//            <#code#>
//        } 

        return navigationController
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
  
    
}



