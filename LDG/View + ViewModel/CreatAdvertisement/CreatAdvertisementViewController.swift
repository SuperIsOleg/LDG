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

final class CreatAdvertisementViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var viewModel: CreatAdvertisementViewModel!
    
    private let disposeBag = DisposeBag()
    
    var tableView = UITableView(frame: .zero, style: .insetGrouped)
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Создать объявление"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row < 1 {
            let customCell = tableView.dequeueReusableCell(withIdentifier: TypeOfTransactionTableViewCell.identifier, for: indexPath) as! TypeOfTransactionTableViewCell
            return customCell
        }
        
        if indexPath.row < 2 {
            let customCell2 = tableView.dequeueReusableCell(withIdentifier: NumberOfRoomsTableViewCell.identifier, for: indexPath) as! NumberOfRoomsTableViewCell
            return customCell2
        }

        if indexPath.row < 3 {
            let customCell3 = tableView.dequeueReusableCell(withIdentifier: TypeOfRoomsTableViewCell.identifier, for: indexPath) as! TypeOfRoomsTableViewCell
            return customCell3
        }

        
        if indexPath.row < 4 {
            let customCell4 = tableView.dequeueReusableCell(withIdentifier: TotalAreaTableViewCell.identifier, for: indexPath) as! TotalAreaTableViewCell
            return customCell4
        }
        
        if indexPath.row < 5 {
            let customCell5 = tableView.dequeueReusableCell(withIdentifier: KitchenAreaTableViewCell.identifier, for: indexPath) as! KitchenAreaTableViewCell
            return customCell5
        }
        
        if indexPath.row < 6 {
            let customCell6 = tableView.dequeueReusableCell(withIdentifier: BalconyTableViewCell.identifier, for: indexPath) as! BalconyTableViewCell
            return customCell6
        }
        
        if indexPath.row < 7 {
            let customCell7 = tableView.dequeueReusableCell(withIdentifier: CeilingHeightTableViewCell.identifier, for: indexPath) as! CeilingHeightTableViewCell
            return customCell7
        }
        
        if indexPath.row < 8 {
            let customCell8 = tableView.dequeueReusableCell(withIdentifier: AvailabilityOfFurnitureTableViewCell.identifier, for: indexPath) as! AvailabilityOfFurnitureTableViewCell
            return customCell8
        }
        
        if indexPath.row < 9 {
            let customCell9 = tableView.dequeueReusableCell(withIdentifier: FloorTableViewCell.identifier, for: indexPath) as! FloorTableViewCell
            return customCell9
        }
        
        if indexPath.row < 10 {
            let customCell10 = tableView.dequeueReusableCell(withIdentifier: FloorOfTheHouseTableViewCell.identifier, for: indexPath) as! FloorOfTheHouseTableViewCell
            return customCell10
        }
        
        if indexPath.row < 11 {
            let customCell11 = tableView.dequeueReusableCell(withIdentifier: WallMaterialTableViewCell.identifier, for: indexPath) as! WallMaterialTableViewCell
            return customCell11
        }
        
        if indexPath.row < 12 {
            let customCell12 = tableView.dequeueReusableCell(withIdentifier: YearOfConstructionTableViewCell.identifier, for: indexPath) as! YearOfConstructionTableViewCell
            return customCell12
        }
        
        if indexPath.row < 13 {
            let customCell13 = tableView.dequeueReusableCell(withIdentifier: InANewBuildingTableViewCell.identifier, for: indexPath) as! InANewBuildingTableViewCell
            return customCell13
        }
        if indexPath.row < 14 {
            let customCell14 = tableView.dequeueReusableCell(withIdentifier: ConditionTableViewCell.identifier, for: indexPath) as! ConditionTableViewCell
            return customCell14
        }
        if indexPath.row < 15 {
            let customCell15 = tableView.dequeueReusableCell(withIdentifier: DescriptionTableViewCell.identifier, for: indexPath) as! DescriptionTableViewCell
            return customCell15
        }
        if indexPath.row < 16 {
            let customCell16 = tableView.dequeueReusableCell(withIdentifier: PriceTableViewCell.identifier, for: indexPath) as! PriceTableViewCell
            return customCell16
        }
        if indexPath.row < 17 {
            let customCell17 = tableView.dequeueReusableCell(withIdentifier: ExchangeTableViewCell.identifier, for: indexPath) as! ExchangeTableViewCell
            return customCell17
        }
        if indexPath.row < 18 {
            let customCell18 = tableView.dequeueReusableCell(withIdentifier: AddresTableViewCell.identifier, for: indexPath) as! AddresTableViewCell
            return customCell18
        }
        if indexPath.row < 19 {
            let customCell19 = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as! NameTableViewCell
            return customCell19
        }
        if indexPath.row < 20 {
            let customCell20 = tableView.dequeueReusableCell(withIdentifier: PhoneNumberTableViewCell.identifier, for: indexPath) as! PhoneNumberTableViewCell
            return customCell20
        }
        
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
        
    }
    
    override init() {
        super.init()
        self.tabBarItem = RAMAnimatedTabBarItem(title: "Create", image: UIImage(systemName: "plus"), tag: 1)
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRotationAnimation()
    }
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(tableView)
        
        tableView.register(TypeOfTransactionTableViewCell.nib(), forCellReuseIdentifier: TypeOfTransactionTableViewCell.identifier)
        tableView.register(NumberOfRoomsTableViewCell.nib(), forCellReuseIdentifier: NumberOfRoomsTableViewCell.identifier)
        tableView.register(TypeOfRoomsTableViewCell.nib(), forCellReuseIdentifier: TypeOfRoomsTableViewCell.identifier)
        tableView.register(TotalAreaTableViewCell.nib(), forCellReuseIdentifier: TotalAreaTableViewCell.identifier)
        tableView.register(KitchenAreaTableViewCell.nib(), forCellReuseIdentifier: KitchenAreaTableViewCell.identifier)
        tableView.register(BalconyTableViewCell.nib(), forCellReuseIdentifier: BalconyTableViewCell.identifier)
        tableView.register(CeilingHeightTableViewCell.nib(), forCellReuseIdentifier: CeilingHeightTableViewCell.identifier)
        tableView.register(AvailabilityOfFurnitureTableViewCell.nib(), forCellReuseIdentifier: AvailabilityOfFurnitureTableViewCell.identifier)
        tableView.register(FloorTableViewCell.nib(), forCellReuseIdentifier: FloorTableViewCell.identifier)
        tableView.register(FloorOfTheHouseTableViewCell.nib(), forCellReuseIdentifier: FloorOfTheHouseTableViewCell.identifier)
        tableView.register(WallMaterialTableViewCell.nib(), forCellReuseIdentifier: WallMaterialTableViewCell.identifier)
        tableView.register(YearOfConstructionTableViewCell.nib(), forCellReuseIdentifier: YearOfConstructionTableViewCell.identifier)
        tableView.register(InANewBuildingTableViewCell.nib(), forCellReuseIdentifier: InANewBuildingTableViewCell.identifier)
        tableView.register(ConditionTableViewCell.nib(), forCellReuseIdentifier: ConditionTableViewCell.identifier)
        tableView.register(DescriptionTableViewCell.nib(), forCellReuseIdentifier: DescriptionTableViewCell.identifier)
        tableView.register(PriceTableViewCell.nib(), forCellReuseIdentifier: PriceTableViewCell.identifier)
        tableView.register(ExchangeTableViewCell.nib(), forCellReuseIdentifier: ExchangeTableViewCell.identifier)
        tableView.register(AddresTableViewCell.nib(), forCellReuseIdentifier: AddresTableViewCell.identifier)
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
        tableView.register(PhoneNumberTableViewCell.nib(), forCellReuseIdentifier: PhoneNumberTableViewCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        
    }
    
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
    }
    
}
