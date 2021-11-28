//
//  ViewingAdvertisementViewController.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import UIKit

class ViewingAdvertisementViewController: BaseViewController {

    private var viewModel: ViewingAdvertisementViewModel!
    
    func bind(viewModel: ViewingAdvertisementViewModel) {
        self.viewModel = viewModel
        
    }
    
    override init() {
        super.init()
    }
    
    override func loadView() {
        super.loadView()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
    }
   
}

    



