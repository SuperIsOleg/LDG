//
//  SavedViewController.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import RxSwift
import RxCocoa
import RxSwiftExt
import RAMAnimatedTabBarController

final class SavedViewController: UIViewController {
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        func didTapButton() {
               let tabBarVC = CustomTabBar()
               present(tabBarVC, animated: true)
           }
        
//        view.backgroundColor = .green
//        
//        self.tabBarItem = RAMAnimatedTabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 1)
//        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFumeAnimation()
//        
//        present(self, animated: true)
       }
}
