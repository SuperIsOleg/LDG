//
//  ViewingAdvertisementViewController.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import UIKit

class ViewingAdvertisementViewController: BaseViewController {
    
    var tableView = UITableView(frame: .zero, style: .insetGrouped)

    private var viewModel: ViewingAdvertisementViewModel!
    
    func bind(viewModel: ViewingAdvertisementViewModel) {
        self.viewModel = viewModel
        
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
        
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
    }
   
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
    }
    
}

extension ViewingAdvertisementViewController:  UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 20
        default:
            return 0
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



