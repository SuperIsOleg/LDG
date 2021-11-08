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

final class CreatAdvertisementViewController: BaseViewController {
    
    private var viewModel: CreatAdvertisementViewModel!
    
    let houseNumberField: UITextField
    let storeyField: UITextField
    let cityField: UITextField
    let countryField: UITextField
    let streetField: UITextField
    
    let mobilePhoneField: UITextField
    let firstNameField: UITextField
    let lastNameField: UITextField
    
    let descriptionsField: UITextField
    
    let numberOfRoomsField: UITextField
    
    let priceField: UITextField
    
    let creatButton: UIButton
    
    let contentLayoutGuide: UILayoutGuide
    
    private let disposeBag = DisposeBag()
    
    override init() {
       
        self.houseNumberField = UITextField()
        self.storeyField = UITextField()
        self.cityField = UITextField()
        self.countryField = UITextField()
        self.streetField = UITextField()
        
        self.mobilePhoneField = UITextField()
        self.firstNameField = UITextField()
        self.lastNameField = UITextField()
        
        self.descriptionsField = UITextField()
        
        self.numberOfRoomsField = UITextField()
        
        self.priceField = UITextField()
        
        self.creatButton = UIButton(type: .system)
        
        self.contentLayoutGuide = UILayoutGuide()
        
        super.init()
        
//        self.tabBarItem = UITabBarItem(title: "Flights",
//                                       image: UIImage(systemName: "airplane"),
//                                       selectedImage: nil)
        
        self.tabBarItem = RAMAnimatedTabBarItem(title: "Create", image: UIImage(systemName: "plus"), tag: 1)
        (self.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRotationAnimation() 
       
    }
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(houseNumberField)
        view.addSubview(storeyField)
        view.addSubview(cityField)
        view.addSubview(countryField)
        view.addSubview(streetField)
        view.addSubview(mobilePhoneField)
        view.addSubview(firstNameField)
        view.addSubview(lastNameField)
        view.addSubview(descriptionsField)
        view.addSubview(numberOfRoomsField)
        view.addSubview(priceField)
        view.addSubview(creatButton)
        
        [houseNumberField,storeyField,cityField,countryField,streetField,mobilePhoneField,firstNameField,lastNameField,descriptionsField,numberOfRoomsField,priceField, creatButton].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        view.addLayoutGuide(contentLayoutGuide)
        
        NSLayoutConstraint.activate([
            houseNumberField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            storeyField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cityField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            countryField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            streetField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mobilePhoneField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstNameField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lastNameField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionsField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            numberOfRoomsField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            priceField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            creatButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            houseNumberField.topAnchor.constraint(equalTo: contentLayoutGuide.topAnchor),
            storeyField.topAnchor.constraint(equalTo: houseNumberField.bottomAnchor, constant: 16.0),
            cityField.topAnchor.constraint(equalTo: storeyField.bottomAnchor, constant: 16.0),
            countryField.topAnchor.constraint(equalTo: cityField.bottomAnchor, constant: 16.0),
            streetField.topAnchor.constraint(equalTo: countryField.bottomAnchor, constant: 16.0),
            mobilePhoneField.topAnchor.constraint(equalTo: streetField.bottomAnchor, constant: 16.0),
            firstNameField.topAnchor.constraint(equalTo: mobilePhoneField.bottomAnchor, constant: 16.0),
            lastNameField.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 16.0),
            descriptionsField.topAnchor.constraint(equalTo: lastNameField.bottomAnchor, constant: 16.0),
            numberOfRoomsField.topAnchor.constraint(equalTo: descriptionsField.bottomAnchor, constant: 16.0),
            priceField.topAnchor.constraint(equalTo: numberOfRoomsField.bottomAnchor, constant: 16.0),
            creatButton.topAnchor.constraint(equalTo: priceField.bottomAnchor, constant: 16.0),
            creatButton.bottomAnchor.constraint(equalTo: contentLayoutGuide.bottomAnchor),
            
            storeyField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            storeyField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            cityField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            cityField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            countryField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            countryField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            streetField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            streetField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            mobilePhoneField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            mobilePhoneField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            firstNameField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            firstNameField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            lastNameField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            lastNameField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            descriptionsField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            descriptionsField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            numberOfRoomsField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            numberOfRoomsField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            priceField.leadingAnchor.constraint(equalTo: houseNumberField.leadingAnchor),
            priceField.trailingAnchor.constraint(equalTo: houseNumberField.trailingAnchor),
            
            
            houseNumberField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            storeyField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            cityField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            countryField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            streetField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            mobilePhoneField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            firstNameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            lastNameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            descriptionsField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            numberOfRoomsField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            priceField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            creatButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            creatButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
           
            creatButton.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor),

            contentLayoutGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor)
               
        ])
        
        houseNumberField.layer.borderWidth = 1.0
        storeyField.layer.borderWidth = 1.0
        cityField.layer.borderWidth = 1.0
        countryField.layer.borderWidth = 1.0
        streetField.layer.borderWidth = 1.0
        mobilePhoneField.layer.borderWidth = 1.0
        firstNameField.layer.borderWidth = 1.0
        lastNameField.layer.borderWidth = 1.0
        descriptionsField.layer.borderWidth = 1.0
        numberOfRoomsField.layer.borderWidth = 1.0
        priceField.layer.borderWidth = 1.0
    

        houseNumberField.placeholder = "Номер дома"
        storeyField.placeholder = "Этаж"
        cityField.placeholder = "Город"
        countryField.placeholder = "Страна"
        streetField.placeholder = "Улица"
        mobilePhoneField.placeholder = "Мобильный телефон"
        firstNameField.placeholder = "Имя"
        lastNameField.placeholder = "Фамилия"
        descriptionsField.placeholder = "Описание"
        numberOfRoomsField.placeholder = "Количество комнат"
        priceField.placeholder = "Цена"
        
        creatButton.setTitle("Создать объявление", for: .normal)
      
        
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .brown
        
    }
    
    func bind(viewModel: CreatAdvertisementViewModel) {
//        self.viewModel = viewModel
        
        viewModel.houseNumberFieldText
            .drive(houseNumberField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.storeyFieldText
            .drive(storeyField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.cityFieldText
            .drive(cityField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.countryFieldText
            .drive(countryField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.streetFieldText
            .drive(streetField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.mobilePhoneFieldText
            .drive(mobilePhoneField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.firstNameFieldText
            .drive(firstNameField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.lastNameFieldText
            .drive(lastNameField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.descriptionsFieldText
            .drive(descriptionsField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.numberOfRoomsFieldText
            .drive(numberOfRoomsField.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.priceFieldText
            .drive(priceField.rx.text)
            .disposed(by: disposeBag)


        houseNumberField.rx.controlEvent(.editingChanged)
            .withLatestFrom(houseNumberField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.houseNumberFieldChanged)
            .disposed(by: disposeBag)
        
        storeyField.rx.controlEvent(.editingChanged)
            .withLatestFrom(storeyField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.storeyFieldChanged)
            .disposed(by: disposeBag)
        
        cityField.rx.controlEvent(.editingChanged)
            .withLatestFrom(cityField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.cityFieldChanged)
            .disposed(by: disposeBag)
        
        countryField.rx.controlEvent(.editingChanged)
            .withLatestFrom(countryField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.countryFieldChanged)
            .disposed(by: disposeBag)
        
        streetField.rx.controlEvent(.editingChanged)
            .withLatestFrom(streetField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.streetFieldChanged)
            .disposed(by: disposeBag)
        
        mobilePhoneField.rx.controlEvent(.editingChanged)
            .withLatestFrom(mobilePhoneField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.mobilePhoneFieldChanged)
            .disposed(by: disposeBag)
        
        firstNameField.rx.controlEvent(.editingChanged)
            .withLatestFrom(firstNameField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.firstNameFieldChanged)
            .disposed(by: disposeBag)
        
        lastNameField.rx.controlEvent(.editingChanged)
            .withLatestFrom(lastNameField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.lastNameFieldChanged)
            .disposed(by: disposeBag)
        
        descriptionsField.rx.controlEvent(.editingChanged)
            .withLatestFrom(descriptionsField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.descriptionsFieldChanged)
            .disposed(by: disposeBag)
        
        numberOfRoomsField.rx.controlEvent(.editingChanged)
            .withLatestFrom(numberOfRoomsField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.numberOfRoomsFieldChanged)
            .disposed(by: disposeBag)
        
        priceField.rx.controlEvent(.editingChanged)
            .withLatestFrom(priceField.rx.text)
            .distinctUntilChanged()
            .map {$0 ?? ""}
            .bind(onNext: viewModel.priceFieldChanged)
            .disposed(by: disposeBag)

        creatButton.rx.tap
            .bind(onNext: viewModel.creatTapped)
            .disposed(by: disposeBag)
    }
    
}
