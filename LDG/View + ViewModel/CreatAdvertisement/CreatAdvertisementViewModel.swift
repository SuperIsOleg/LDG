//
//  ProfileViewModel.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import Foundation
import RxSwift
import RxRelay
import RxCocoa

final class CreatAdvertisementViewModel {
    
    enum Route {
        case exploreView
    }
    
    private let disposeBag = DisposeBag()
    
    private let _addAdvertisementTapped = PublishRelay<Void>()
    func addAdvertisementTapped() {
        _addAdvertisementTapped.accept(())
    }
    
    // для переключателя
    private let _inANewBuildingTextChanged = PublishRelay<String>()
    func inANewBuildingTextChanged(_ text: String) {
        _inANewBuildingTextChanged.accept(text)
    }
    
    private let _exchangeTextChanged = PublishRelay<String>()
    func exchangeTextChanged(_ text: String) {
        _exchangeTextChanged.accept(text)
    }

    private let _typeOfTransactionTextChanged = PublishRelay<String>()
    func typeOfTransactionTextChanged(_ text: String) {
        _typeOfTransactionTextChanged.accept(text)
    }
    
    private let _numberOfRoomsTextChanged = PublishRelay<String>()
    func numberOfRoomsTextChanged(_ text: String) {
        _numberOfRoomsTextChanged.accept(text)
    }
    
    private let _typeOfRoomsTextChanged = PublishRelay<String>()
    func typeOfRoomsTextChanged(_ text: String) {
        _typeOfRoomsTextChanged.accept(text)
    }
    
    private let _balconyTextChanged = PublishRelay<String>()
    func balconyTextChanged(_ text: String) {
        _balconyTextChanged.accept(text)
    }
    
    private let _availabilityOfFurnitureTextChanged = PublishRelay<String>()
    func availabilityOfFurnitureTextChanged(_ text: String) {
        _availabilityOfFurnitureTextChanged.accept(text)
    }
    
    private let _wallMaterialTextChanged = PublishRelay<String>()
    func wallMaterialTextChanged(_ text: String) {
        _wallMaterialTextChanged.accept(text)
    }
    
    private let _conditionTextChanged = PublishRelay<String>()
    func conditionTextChanged(_ text: String) {
        _conditionTextChanged.accept(text)
    }
    
    private let _totalAreaTextFieldChanged = PublishRelay<String>()
    func totalAreaTextFieldChanged(_ text: String) {
        _totalAreaTextFieldChanged.accept(text)
    }
    
    
    private let _kitchenAreaFieldChanged = PublishRelay<String>()
    func kitchenAreaFieldChanged(_ text: String) {
        _kitchenAreaFieldChanged.accept(text)
    }
    
    private let _ceilingHeightFieldChanged = PublishRelay<String>()
    func ceilingHeightFieldChanged(_ text: String) {
        _ceilingHeightFieldChanged.accept(text)
    }
    
    private let _floorFieldChanged = PublishRelay<String>()
    func floorFieldChanged(_ text: String) {
        _floorFieldChanged.accept(text)
    }
    
    private let _floorOfHousFieldChanged = PublishRelay<String>()
    func floorOfHousFieldChanged(_ text: String) {
        _floorOfHousFieldChanged.accept(text)
    }
    
    private let _yearsOfConstructionFieldChanged = PublishRelay<String>()
    func yearsOfConstructionFieldChanged(_ text: String) {
        _yearsOfConstructionFieldChanged.accept(text)
    }
    
    private let _descriptionFieldChanged = PublishRelay<String>()
    func descriptionFieldChanged(_ text: String) {
        _descriptionFieldChanged.accept(text)
    }
    
    private let _priceFieldChanged = PublishRelay<String>()
    func priceFieldChanged(_ text: String) {
        _priceFieldChanged.accept(text)
    }
    
    private let _currencyFieldChanged = PublishRelay<String>()
    func currencyFieldChanged(_ text: String) {
        _currencyFieldChanged.accept(text)
    }
    
    private let _adressFieldChanged = PublishRelay<String>()
    func adressFieldChanged(_ text: String) {
        _adressFieldChanged.accept(text)
    }
    
    private let _nameFieldChanged = PublishRelay<String>()
    func nameFieldChanged(_ text: String) {
        _nameFieldChanged.accept(text)
    }
    
    private let _phoneNumberFieldChanged = PublishRelay<String>()
    func phoneNumberFieldChanged(_ text: String) {
        _phoneNumberFieldChanged.accept(text)
    }
    
  // для переключателя
    lazy var inANewBuildingText = _inANewBuildingTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
   
    lazy var exchangeText = _exchangeTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    
    
    lazy var typeOfTransactionText = _typeOfTransactionTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var numberOfRoomsText = _numberOfRoomsTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var typeOfRoomsText = _typeOfRoomsTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var balconyText = _balconyTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var availabilityOfFurnitureText = _availabilityOfFurnitureTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var wallMaterialText = _wallMaterialTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var conditionText = _conditionTextChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var totalAreaFieldText = _totalAreaTextFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var kitchenAreaFieldText = _kitchenAreaFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var ceilingHeightFieldText = _ceilingHeightFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var floorFieldText = _floorFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var floorOfHousFieldText = _floorOfHousFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var yearsOfConstructionFieldText = _yearsOfConstructionFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var descriptionFieldText = _descriptionFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var priceFieldText = _priceFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var currencyFieldText = _currencyFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var adressFieldText = _adressFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var nameFieldText = _nameFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var phoneNumberFieldText = _phoneNumberFieldChanged
        .asDriver(onErrorJustReturn: "")
//        .observe(on: MainScheduler.asyncInstance)
//        .catchAndReturn("")
        .startWith("")
    
   lazy var arrayFieldText = [inANewBuildingText, exchangeText, typeOfTransactionText, numberOfRoomsText, typeOfRoomsText, balconyText, availabilityOfFurnitureText, wallMaterialText, conditionText, totalAreaFieldText, kitchenAreaFieldText, ceilingHeightFieldText, floorFieldText, floorOfHousFieldText, yearsOfConstructionFieldText, descriptionFieldText, priceFieldText, currencyFieldText, adressFieldText, nameFieldText, phoneNumberFieldText]
 
    lazy var route: Signal<Route> = Signal
        .merge(
            _addAdvertisementTapped.asObservable()
                .withLatestFrom(Observable.combineLatest(arrayFieldText.map{$0.asObservable()}))
                .flatMapLatest { arrayFields in
                    AdvertisementRepository.shared.AddAdvertisement(inANewBuilding: arrayFields[0], exchange: arrayFields[1], typeOfTransaction: arrayFields[2], numberOfRooms: arrayFields[3], typeOfRooms: arrayFields[4], balcony: arrayFields[5], availabilityOfFurniture: arrayFields[6], wallMaterial: arrayFields[7], condition: arrayFields[8], totalArea: arrayFields[9], kitchenArea: arrayFields[10], ceilingHeight: arrayFields[11], floor: arrayFields[12], floorOfTheHouse: arrayFields[13], yearOfConstruction: arrayFields[14], descriptions: arrayFields[15], price: arrayFields[16], currency: arrayFields[17], address: arrayFields[18], name: arrayFields[19], phoneNumber: arrayFields[20])
                        .debug("Add Advertisement Result")
                        .asSignal(onErrorSignalWith: .never())
                }
                .filter { $0 == true }
                .mapTo(.exploreView)
                .debug("Add Advertisement")
                .asSignal(onErrorSignalWith: .never())
        )
    
    init() {
        _addAdvertisementTapped.asSignal().emit(onNext: { print("Advertisement Added") }).disposed(by: disposeBag)
    }
    
}


