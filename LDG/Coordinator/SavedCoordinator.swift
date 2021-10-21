//
//  SavedCoordinator.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import RxSwift

class SavedCoordinator: CoordinatorType {
    
    private let disposeBag = DisposeBag()
    let navigationController = UINavigationController()
    
    
    func start() -> UIViewController {
        navigationController.setViewControllers([showSavedScreen()], animated: false)
        return navigationController
    }
    
    func showSavedScreen() -> UIViewController {
        let viewController = SavedViewController()
        
        return viewController
    }
    
}
