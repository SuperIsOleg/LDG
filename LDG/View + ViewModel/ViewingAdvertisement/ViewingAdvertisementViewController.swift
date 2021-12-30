//
//  ViewingAdvertisementViewController.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import UIKit
import Foundation
import RxSwift
import RxCocoa
import RxSwiftExt
import RealmSwift

class ViewingAdvertisementViewController: BaseViewController {
   
    private let disposeBag = DisposeBag()
    
    static var identifier = "ViewingAdvertisementViewController"
    
    var tableView = UITableView(frame: .zero, style: .insetGrouped)
    
    private var viewModel: ViewingAdvertisementViewModel!
    
    func bind(viewModel: ViewingAdvertisementViewModel) {
        self.viewModel = viewModel
        
        viewModel.cells
                .drive(tableView.rx.items(cellIdentifier: ImageTableViewCell.identifier, cellType: ImageTableViewCell.self)) { index, model, cell in
                    cell.addressLabel.text = model.address
                    cell.priceLabel.text = model.price
            }
            .disposed(by: disposeBag)
    }
    
    override init() {
        super.init()
    }
    
    override func loadView() {
        super.loadView()
        tableView.reloadData()
        
        view.addSubview(tableView)
        tableView.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        tableView.register(DescriptionAdvertisementTableViewCell.nib(), forCellReuseIdentifier: DescriptionAdvertisementTableViewCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
    
        view.backgroundColor = .white
    }
   
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
    }
    
}

extension ViewingAdvertisementViewController:  UITableViewDataSource, UITableViewDelegate {
    
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 10
        case 1:
            return 30
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return " "
        case 1:
            return "Описание:"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            if indexPath.row < 1 {
                let customCell0 = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
                return customCell0
                }
        case 1:
            if indexPath.row < 1 {
                let customCell1 = tableView.dequeueReusableCell(withIdentifier: DescriptionAdvertisementTableViewCell.identifier, for: indexPath) as! DescriptionAdvertisementTableViewCell
                return customCell1
            }
        default :
            return UITableViewCell()
        }
        return UITableViewCell()
    }
}



