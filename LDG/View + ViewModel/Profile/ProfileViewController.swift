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

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        func didTapButton() {
               let tabBarVC = CustomTabBar()
               present(tabBarVC, animated: true)
           }
        
//        view.backgroundColor = .blue
//        
//        self.tabBarItem = RAMAnimatedTabBarItem(title: "Flights", image: UIImage(systemName: "airplane"), tag: 1)
//        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipRightTransitionItemAnimations()
//        
//        present(self, animated: true)
       }
}
