//
//  FilterViewController.swift
//  LDG
//
//  Created by Home on 21.11.21.
//

import UIKit
import RxSwift
import RxCocoa
import RxSwiftExt

final class FilterViewController: BaseViewController {
    
    private var viewModel: FilterViewModel!
    
    func bind(viewModel: FilterViewModel) {
        self.viewModel = viewModel
        
    }
    
    override init() {
        super.init()
    }
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .red
    }

}
