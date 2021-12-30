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
import Photos
import PhotosUI
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> main
=======
>>>>>>> WIP

final class CreatAdvertisementViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var viewModel: CreatAdvertisementViewModel!
    
    private let disposeBag = DisposeBag()
    
<<<<<<< HEAD
//    var images = [UIImage(systemName: "photo.on.rectangle.angled")!]
=======
>>>>>>> WIP
    var images = [UIImage]()
    
    let addAdvertisementButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Подать объявление", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = .red
        button.layer.cornerRadius = 20
        return button
    }()
    
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> WIP
    var tableView = UITableView(frame: .zero, style: .insetGrouped)
    
    func bind(viewModel: CreatAdvertisementViewModel) {
        self.viewModel = viewModel
        
        addAdvertisementButton.rx.tap
            .bind(onNext: viewModel.addAdvertisementTapped)
            .disposed(by: disposeBag)
    }
<<<<<<< HEAD
=======
    func bind(viewModel: CreatAdvertisementViewModel) {
        self.viewModel = viewModel
        
    }
    
    var tableView = UITableView(frame: .zero, style: .insetGrouped)
>>>>>>> main
=======
>>>>>>> WIP
    
    func animatedTableView() {
//        tableView.reloadData()
        let cells = tableView.visibleCells
        let tableViewHeight = tableView.bounds.height
        var delay: Double = 0
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
            
            UIView.animate(withDuration: 1.5,
                           delay: delay * 0.05,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                cell.transform = CGAffineTransform.identity
            },completion: nil)
            
            delay += 1
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Добавьте фотографии"
        case 1:
            return "Заполните пустые поля"
        default:
            return ""
        }
<<<<<<< HEAD
<<<<<<< HEAD
=======
        
>>>>>>> main
=======
>>>>>>> WIP
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
<<<<<<< HEAD
<<<<<<< HEAD
            return 10
=======
            return 50
>>>>>>> main
=======
            return 10
>>>>>>> WIP
        case 1:
            return 30
        default:
            return 0
        }
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
    
    
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> WIP
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let viewModel = viewModel!
        
<<<<<<< HEAD
=======
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableView.automaticDimension
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
>>>>>>> main
        switch indexPath.section {
        case 0:
            if indexPath.row < 1 {
                let customCell0 = tableView.dequeueReusableCell(withIdentifier: PhotoPickerTableViewCell.identifier, for: indexPath) as! PhotoPickerTableViewCell
                
<<<<<<< HEAD
                customCell0.configure(images: self.images) {
                    let imagePickerController = UIImagePickerController()
                    imagePickerController.delegate = self
                    imagePickerController.allowsEditing = true
                    imagePickerController.sourceType = .photoLibrary
                    self.present(imagePickerController, animated: true)
                }
=======
                customCell0.configure {
//                    let imagePickerController = UIImagePickerController()
//                    imagePickerController.delegate = self
//                    imagePickerController.allowsEditing = true
//                    imagePickerController.sourceType = .photoLibrary
//                    self.present(imagePickerController, animated: true)
                }
                
>>>>>>> main
                return customCell0
            }
        case 1:
            
            if indexPath.row < 1 {
                let customCell1 = tableView.dequeueReusableCell(withIdentifier: TypeOfTransactionTableViewCell.identifier, for: indexPath) as! TypeOfTransactionTableViewCell
<<<<<<< HEAD
                
                customCell1.clouser = {viewModel.typeOfTransactionTextChanged($0)}
                
=======
>>>>>>> main
                return customCell1
            }
            
            if indexPath.row < 2 {
                let customCell2 = tableView.dequeueReusableCell(withIdentifier: NumberOfRoomsTableViewCell.identifier, for: indexPath) as! NumberOfRoomsTableViewCell
<<<<<<< HEAD
                
                customCell2.clouser = {viewModel.numberOfRoomsTextChanged($0)}
                
=======
>>>>>>> main
                return customCell2
            }
            
            if indexPath.row < 3 {
                let customCell3 = tableView.dequeueReusableCell(withIdentifier: TypeOfRoomsTableViewCell.identifier, for: indexPath) as! TypeOfRoomsTableViewCell
<<<<<<< HEAD
                
                customCell3.clouser = {viewModel.typeOfRoomsTextChanged($0)}
                
=======
>>>>>>> main
                return customCell3
            }
            
            if indexPath.row < 4 {
                let customCell4 = tableView.dequeueReusableCell(withIdentifier: TotalAreaTableViewCell.identifier, for: indexPath) as! TotalAreaTableViewCell
<<<<<<< HEAD
                
                customCell4.clouser = {viewModel.totalAreaTextFieldChanged($0)}
                
=======
>>>>>>> main
                return customCell4
            }
            
            if indexPath.row < 5 {
                let customCell5 = tableView.dequeueReusableCell(withIdentifier: KitchenAreaTableViewCell.identifier, for: indexPath) as! KitchenAreaTableViewCell
<<<<<<< HEAD
                
                customCell5.clouser = {viewModel.kitchenAreaFieldChanged($0)}
                
=======
>>>>>>> main
                return customCell5
            }
            
            if indexPath.row < 6 {
                let customCell6 = tableView.dequeueReusableCell(withIdentifier: BalconyTableViewCell.identifier, for: indexPath) as! BalconyTableViewCell
<<<<<<< HEAD
                
                customCell6.clouser = {viewModel.balconyTextChanged($0)}
                
=======
>>>>>>> main
                return customCell6
            }
            
            if indexPath.row < 7 {
                let customCell7 = tableView.dequeueReusableCell(withIdentifier: CeilingHeightTableViewCell.identifier, for: indexPath) as! CeilingHeightTableViewCell
<<<<<<< HEAD
                
                customCell7.clouser = {viewModel.ceilingHeightFieldChanged(String($0))}
                
=======
>>>>>>> main
                return customCell7
            }
            
            if indexPath.row < 8 {
                let customCell8 = tableView.dequeueReusableCell(withIdentifier: AvailabilityOfFurnitureTableViewCell.identifier, for: indexPath) as! AvailabilityOfFurnitureTableViewCell
<<<<<<< HEAD
                
                customCell8.clouser = {viewModel.availabilityOfFurnitureTextChanged($0)}
                
=======
>>>>>>> main
                return customCell8
            }
            
            if indexPath.row < 9 {
                let customCell9 = tableView.dequeueReusableCell(withIdentifier: FloorTableViewCell.identifier, for: indexPath) as! FloorTableViewCell
<<<<<<< HEAD
                
                customCell9.clouser = {viewModel.floorFieldChanged(String($0))}
                
=======
>>>>>>> main
                return customCell9
            }
            
            if indexPath.row < 10 {
                let customCell10 = tableView.dequeueReusableCell(withIdentifier: FloorOfTheHouseTableViewCell.identifier, for: indexPath) as! FloorOfTheHouseTableViewCell
<<<<<<< HEAD
                
                customCell10.clouser = {viewModel.floorOfHousFieldChanged(String($0))}
                
=======
>>>>>>> main
                return customCell10
            }
            
            if indexPath.row < 11 {
                let customCell11 = tableView.dequeueReusableCell(withIdentifier: WallMaterialTableViewCell.identifier, for: indexPath) as! WallMaterialTableViewCell
<<<<<<< HEAD
                
                customCell11.clouser = {viewModel.wallMaterialTextChanged($0)}
                
=======
>>>>>>> main
                return customCell11
            }
            
            if indexPath.row < 12 {
                let customCell12 = tableView.dequeueReusableCell(withIdentifier: YearOfConstructionTableViewCell.identifier, for: indexPath) as! YearOfConstructionTableViewCell
<<<<<<< HEAD
                
                customCell12.clouser = {viewModel.yearsOfConstructionFieldChanged(String($0))}
                
=======
>>>>>>> main
                return customCell12
            }
            
            if indexPath.row < 13 {
                let customCell13 = tableView.dequeueReusableCell(withIdentifier: InANewBuildingTableViewCell.identifier, for: indexPath) as! InANewBuildingTableViewCell
<<<<<<< HEAD
                
                customCell13.clouser = {viewModel.inANewBuildingTextChanged($0)}
                
=======
>>>>>>> main
                return customCell13
            }
            if indexPath.row < 14 {
                let customCell14 = tableView.dequeueReusableCell(withIdentifier: ConditionTableViewCell.identifier, for: indexPath) as! ConditionTableViewCell
<<<<<<< HEAD
                
                customCell14.clouser = {viewModel.conditionTextChanged($0)}
                
=======
>>>>>>> main
                return customCell14
            }
            if indexPath.row < 15 {
                let customCell15 = tableView.dequeueReusableCell(withIdentifier: DescriptionTableViewCell.identifier, for: indexPath) as! DescriptionTableViewCell
<<<<<<< HEAD
                
                customCell15.clouser = {viewModel.descriptionFieldChanged($0)}
                
=======
>>>>>>> main
                return customCell15
            }
            if indexPath.row < 16 {
                let customCell16 = tableView.dequeueReusableCell(withIdentifier: PriceTableViewCell.identifier, for: indexPath) as! PriceTableViewCell
<<<<<<< HEAD
                
                customCell16.clouser = {viewModel.priceFieldChanged(String($0))}
                customCell16.clouser = {viewModel.currencyFieldChanged(String($0))}
                
=======
>>>>>>> main
                return customCell16
            }
            if indexPath.row < 17 {
                let customCell17 = tableView.dequeueReusableCell(withIdentifier: ExchangeTableViewCell.identifier, for: indexPath) as! ExchangeTableViewCell
<<<<<<< HEAD
                customCell17.clouser = {viewModel.exchangeTextChanged($0)}
                
=======
>>>>>>> main
                return customCell17
            }
            if indexPath.row < 18 {
                let customCell18 = tableView.dequeueReusableCell(withIdentifier: AddresTableViewCell.identifier, for: indexPath) as! AddresTableViewCell
<<<<<<< HEAD
                
                customCell18.clouser = {viewModel.adressFieldChanged(String($0))}
                
=======
>>>>>>> main
                return customCell18
            }
            if indexPath.row < 19 {
                let customCell19 = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as! NameTableViewCell
<<<<<<< HEAD
                
                customCell19.clouser = {viewModel.nameFieldChanged($0)}
                
=======
>>>>>>> main
                return customCell19
            }
            if indexPath.row < 20 {
                let customCell20 = tableView.dequeueReusableCell(withIdentifier: PhoneNumberTableViewCell.identifier, for: indexPath) as! PhoneNumberTableViewCell
<<<<<<< HEAD
                
                customCell20.clouser = {viewModel.phoneNumberFieldChanged(String("+375 \($0)"))}
                
=======
>>>>>>> main
                return customCell20
            }
            return UITableViewCell()
        default :
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    
<<<<<<< HEAD
=======
        switch indexPath.section {
        case 0:
            let customCell0 = tableView.dequeueReusableCell(withIdentifier: PhotoPickerTableViewCell.identifier, for: indexPath) as! PhotoPickerTableViewCell
            customCell0.configure(images: self.images) {
                let imagePickerController = UIImagePickerController()
                imagePickerController.delegate = self
                imagePickerController.allowsEditing = true
                imagePickerController.sourceType = .photoLibrary
                self.present(imagePickerController, animated: true)
            }
            return customCell0
            
        case 1:
            switch indexPath.row {
            case 0:
                let customCell1 = tableView.dequeueReusableCell(withIdentifier: TypeOfTransactionTableViewCell.identifier, for: indexPath) as! TypeOfTransactionTableViewCell
                customCell1.clouser = {viewModel.typeOfTransactionTextChanged($0)}
                return customCell1
            case 1:
                let customCell2 = tableView.dequeueReusableCell(withIdentifier: NumberOfRoomsTableViewCell.identifier, for: indexPath) as! NumberOfRoomsTableViewCell
                customCell2.clouser = {viewModel.numberOfRoomsTextChanged($0)}
                return customCell2
            case 2:
                let customCell3 = tableView.dequeueReusableCell(withIdentifier: TypeOfRoomsTableViewCell.identifier, for: indexPath) as! TypeOfRoomsTableViewCell
                customCell3.clouser = {viewModel.typeOfRoomsTextChanged($0)}
                return customCell3
            case 3:
                let customCell4 = tableView.dequeueReusableCell(withIdentifier: TotalAreaTableViewCell.identifier, for: indexPath) as! TotalAreaTableViewCell
                customCell4.clouser = {viewModel.totalAreaTextFieldChanged($0)}
                return customCell4
            case 4:
                let customCell5 = tableView.dequeueReusableCell(withIdentifier: KitchenAreaTableViewCell.identifier, for: indexPath) as! KitchenAreaTableViewCell
                customCell5.clouser = {viewModel.kitchenAreaFieldChanged($0)}
                return customCell5
            case 5:
                let customCell6 = tableView.dequeueReusableCell(withIdentifier: BalconyTableViewCell.identifier, for: indexPath) as! BalconyTableViewCell
                customCell6.clouser = {viewModel.balconyTextChanged($0)}
                return customCell6
            case 6:
                let customCell7 = tableView.dequeueReusableCell(withIdentifier: CeilingHeightTableViewCell.identifier, for: indexPath) as! CeilingHeightTableViewCell
                customCell7.clouser = {viewModel.ceilingHeightFieldChanged(String($0))}
                return customCell7
            case 7:
                let customCell8 = tableView.dequeueReusableCell(withIdentifier: AvailabilityOfFurnitureTableViewCell.identifier, for: indexPath) as! AvailabilityOfFurnitureTableViewCell
                customCell8.clouser = {viewModel.availabilityOfFurnitureTextChanged($0)}
                return customCell8
            case 8:
                let customCell9 = tableView.dequeueReusableCell(withIdentifier: FloorTableViewCell.identifier, for: indexPath) as! FloorTableViewCell
                customCell9.clouser = {viewModel.floorFieldChanged(String($0))}
                return customCell9
            case 9:
                let customCell10 = tableView.dequeueReusableCell(withIdentifier: FloorOfTheHouseTableViewCell.identifier, for: indexPath) as! FloorOfTheHouseTableViewCell
                customCell10.clouser = {viewModel.floorOfHousFieldChanged(String($0))}
                return customCell10
            case 10:
                let customCell11 = tableView.dequeueReusableCell(withIdentifier: WallMaterialTableViewCell.identifier, for: indexPath) as! WallMaterialTableViewCell
                customCell11.clouser = {viewModel.wallMaterialTextChanged($0)}
                return customCell11
            case 11:
                let customCell12 = tableView.dequeueReusableCell(withIdentifier: YearOfConstructionTableViewCell.identifier, for: indexPath) as! YearOfConstructionTableViewCell
                customCell12.clouser = {viewModel.yearsOfConstructionFieldChanged(String($0))}
                return customCell12
            case 12:
                let customCell13 = tableView.dequeueReusableCell(withIdentifier: InANewBuildingTableViewCell.identifier, for: indexPath) as! InANewBuildingTableViewCell
                customCell13.clouser = {viewModel.inANewBuildingTextChanged($0)}
                return customCell13
            case 13:
                let customCell14 = tableView.dequeueReusableCell(withIdentifier: ConditionTableViewCell.identifier, for: indexPath) as! ConditionTableViewCell
                customCell14.clouser = {viewModel.conditionTextChanged($0)}
                return customCell14
            case 14:
                let customCell15 = tableView.dequeueReusableCell(withIdentifier: DescriptionTableViewCell.identifier, for: indexPath) as! DescriptionTableViewCell
                customCell15.clouser = {viewModel.descriptionFieldChanged($0)}
                return customCell15
            case 15:
                let customCell16 = tableView.dequeueReusableCell(withIdentifier: PriceTableViewCell.identifier, for: indexPath) as! PriceTableViewCell
                customCell16.clouser = {viewModel.priceFieldChanged(String($0))}
                customCell16.clouser = {viewModel.currencyFieldChanged($0)}
                return customCell16
            case 16:
                let customCell17 = tableView.dequeueReusableCell(withIdentifier: ExchangeTableViewCell.identifier, for: indexPath) as! ExchangeTableViewCell
                customCell17.clouser = {viewModel.exchangeTextChanged($0)}
                return customCell17
            case 17:
                let customCell18 = tableView.dequeueReusableCell(withIdentifier: AddresTableViewCell.identifier, for: indexPath) as! AddresTableViewCell
                customCell18.clouser = {viewModel.adressFieldChanged(String($0))}
                return customCell18
            case 18:
                let customCell19 = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as! NameTableViewCell
                customCell19.clouser = {viewModel.nameFieldChanged($0)}
                return customCell19
            case 19:
                let customCell20 = tableView.dequeueReusableCell(withIdentifier: PhoneNumberTableViewCell.identifier, for: indexPath) as! PhoneNumberTableViewCell
                customCell20.clouser = {viewModel.phoneNumberFieldChanged(String("+375 \($0)"))}
                return customCell20
            default:
                return UITableViewCell()
            }
        default:
            return UITableViewCell()
        }
    }
    
>>>>>>> WIP
    @objc func keyboardWillShow(_:Notification) {
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
        }
    }
    
    @objc func keyboardWillChangeFrame(notification: Notification) {
        guard let keyboardFrame = notification.userInfo?[UIView.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        tableView.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: view.frame.height - keyboardFrame.origin.y + 20, right: 0.0)
    }
    
<<<<<<< HEAD
=======
>>>>>>> main
    override init() {
        super.init()
        
        self.tabBarItem = RAMAnimatedTabBarItem(title: "Create", image: UIImage(systemName: "plus"), tag: 3)
=======
    override init() {
        super.init()
        
        self.tabBarItem = RAMAnimatedTabBarItem(title: nil, image: UIImage(systemName: "plus"), tag: 3)
>>>>>>> WIP
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRotationAnimation()
    }
    
    override func loadView() {
        super.loadView()
        
        tableView.reloadData()
        
        animatedTableView()
        
        let footer = UIView(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.size.width, height: 80.0))
        footer.backgroundColor = .secondarySystemBackground
        tableView.tableFooterView = footer
        
        footer.addSubview(addAdvertisementButton)
        addAdvertisementButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //            button.centerYAnchor.constraint(equalTo: footer.centerYAnchor),
<<<<<<< HEAD
<<<<<<< HEAD
            addAdvertisementButton.centerXAnchor.constraint(equalTo: footer.centerXAnchor),
            addAdvertisementButton.heightAnchor.constraint(equalToConstant: 60),
            addAdvertisementButton.widthAnchor.constraint(equalToConstant: 370)
=======
            button.centerXAnchor.constraint(equalTo: footer.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 60),
            button.widthAnchor.constraint(equalToConstant: 370)
>>>>>>> main
=======
            addAdvertisementButton.centerXAnchor.constraint(equalTo: footer.centerXAnchor),
            addAdvertisementButton.heightAnchor.constraint(equalToConstant: 60),
            addAdvertisementButton.widthAnchor.constraint(equalToConstant: 370)
>>>>>>> WIP
        ])
        
        view.addSubview(tableView)
//        tableView.rowHeight = UITableView.automaticDimension
//        tableView.estimatedRowHeight = 150.0
        tableView.register(PhotoPickerTableViewCell.nib(), forCellReuseIdentifier: PhotoPickerTableViewCell.identifier)
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
<<<<<<< HEAD

        view.backgroundColor = .white
    }
    
<<<<<<< HEAD
=======
        
        view.backgroundColor = .white
    }
    
>>>>>>> WIP
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChangeFrame(notification: )), name: UIView.keyboardWillChangeFrameNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIView.keyboardWillShowNotification, object: nil)
        
    }
    
=======
>>>>>>> main
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
        animatedTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animatedTableView()
<<<<<<< HEAD
=======
    }
}

extension CreatAdvertisementViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate   {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
>>>>>>> WIP
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            images.append(image)
        }
        picker.dismiss(animated: true, completion: nil)
        print("\(info)")
        
        tableView.reloadRows(at: [IndexPath(row: 0, section: 0)], with: .automatic)
    }
}

<<<<<<< HEAD
<<<<<<< HEAD
extension CreatAdvertisementViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate   {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            images.append(image)
        }
        picker.dismiss(animated: true, completion: nil)
        print("\(info)")
        
        tableView.reloadRows(at: [IndexPath(row: 0, section: 0)], with: .automatic)
    }
  
}

=======

//extension CreatAdvertisementViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate   {
//    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
////        var imageView:UIImageView!
////
////        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
////            imageView?.image = image
////        }
//        
//        picker.dismiss(animated: true, completion: nil)
//        print("\(info)")
//    }
//}
>>>>>>> main
=======
>>>>>>> WIP

