//
//  CustomTabBar.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import UIKit
import Foundation
import RAMAnimatedTabBarController


class CustomTabBar: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
    }
    
    func configure() {
        let vc1 = ExploreViewController()
        let vc2 = SavedViewController()
        let vc3 = AlertsViewController()
        let vc4 = ProfileViewController()
        
        vc1.view.backgroundColor = .red
        vc2.view.backgroundColor = .blue
        vc3.view.backgroundColor = .gray
        vc4.view.backgroundColor = .green
        
        vc1.tabBarItem = RAMAnimatedTabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        (vc1.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        
        vc2.tabBarItem = RAMAnimatedTabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 1)
        (vc2.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        
        vc3.tabBarItem = RAMAnimatedTabBarItem(title: "Activity", image: UIImage(systemName: "bell"), tag: 1)
        (vc3.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        
        vc4.tabBarItem = RAMAnimatedTabBarItem(title: "Flights", image: UIImage(systemName: "airplane"), tag: 1)
        (vc4.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        
//        setViewControllers([vc1, vc2, vc3, vc4], animated: false)
        
    }
    
}
