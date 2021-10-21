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

final class ExploreViewController: UIViewController {
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        func didTapButton() {
               let tabBarVC = CustomTabBar()
               present(tabBarVC, animated: true)
           }
//        view.backgroundColor = .red
//        
//        self.tabBarItem = RAMAnimatedTabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
//        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        
      
        
       }
}
