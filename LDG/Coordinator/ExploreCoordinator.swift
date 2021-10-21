//
//  ExploreCoordinator.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import RxSwift

class ExploreCoordinator: CoordinatorType {
    
    private let disposeBag = DisposeBag()
    let navigationController = UINavigationController()
    
    
    func start() -> UIViewController {
        navigationController.setViewControllers([showExploreScreen()], animated: false)
        return navigationController
    }
    
    func showExploreScreen() -> UIViewController {
        let viewController = ExploreViewController()
        
        return viewController
    }
    
  
    
}
