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
    
    override init() {
        super.init()
        self.tabBarItem = UITabBarItem(title: "Activity",
                                       image: UIImage(systemName: "bell"),
                                       selectedImage: nil)
    }
    
    override func loadView() {
        super.loadView()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .gray
    }
    
}
