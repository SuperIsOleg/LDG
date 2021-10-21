//
//  ProfileCoordinator.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import RxSwift

class ProfileCoordinator: CoordinatorType {
    
    private let disposeBag = DisposeBag()
    let navigationController = UINavigationController()
    
    
    func start() -> UIViewController {
        navigationController.setViewControllers([showProfileScreen()], animated: false)
        return navigationController
    }
    
    func showProfileScreen() -> UIViewController {
        let viewController = ProfileViewController()
        
        return viewController
    }
}
