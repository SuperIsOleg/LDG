//
//  AlertsCoordinator.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import RxSwift


class AlertsCoordinator: CoordinatorType {
    
    private let disposeBag = DisposeBag()
    let navigationController = UINavigationController()
    
    
    func start() -> UIViewController {
        navigationController.setViewControllers([showAlertsScreen()], animated: false)
        return navigationController
    }
    
    func showAlertsScreen() -> UIViewController {
        let viewController = AlertsViewController()
        
        return viewController
    }
}
