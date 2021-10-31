//
//  ProfileCoordinator.swift
//  LDG
//
//  Created by Home on 21.10.21.
//
//
//import UIKit
//import RxSwift
//
//class ProfileCoordinator: CoordinatorType {
//    
//    private let disposeBag = DisposeBag()
//    let navigationController = UINavigationController(rootViewController: UIViewController())
//    let tabController = UITabBarController()
//    
//    func start() -> UIViewController {
//           navigationController.setViewControllers([tabController], animated: false)
//           tabController.setViewControllers([showExploreScreen(), showSavedScreen(), showAlertsScreen(), showProfileScreen()], animated: false)
//           return navigationController
//       }
//    
//    func showExploreScreen() -> UIViewController {
//        let viewController = ExploreViewController()
//        let viewModel = ExploreViewModel()
//        
//        return viewController
//    }
//    
//    func showSavedScreen() -> UIViewController {
//        let viewController = SavedViewController()
//        let viewModel = SavedViewModel()
//        
//        return viewController
//    }
//    
//    func showAlertsScreen() -> UIViewController {
//        let viewController = AlertsViewController()
//        let viewModel = AlertsViewModel()
//        
//        return viewController
//    }
//  
//    func showProfileScreen() -> UIViewController {
//        let viewController = ProfileViewController()
//        let viewModel = ProfileViewModel()
//        
//        return viewController
//    }
//}
