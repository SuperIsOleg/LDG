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
        case adAdvertisement
    }
    
    private let disposeBag = DisposeBag()
    
    private let _addAdvertisementTapped = PublishRelay<Void>()
    func addAdvertisementTapped() {
        _addAdvertisementTapped.accept(())
    }
    
    private let _postAnAdTapped = PublishRelay<Void>()
    func postAnAdTapped() {
        _postAnAdTapped.accept(())
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
        .startWith("")
    
    //    var arrayField = [totalAreaFieldText, kitchenAreaFieldText, ceilingHeightFieldText, floorFieldText, floorOfHousFieldText,  yearsOfConstructionFieldText, descriptionFieldText, priceFieldText, currencyFieldText, adressFieldText, nameFieldText, phoneNumberFieldText]
    
    //        .withLatestFrom(Observable.combineLatest(totalAreaFieldText.asObservable(),
    //            kitchenAreaFieldText.asObservable(),
    //            ceilingHeightFieldText.asObservable(),
    //            floorFieldText.asObservable(),
    //            floorOfHousFieldText.asObservable(),
    //            yearsOfConstructionFieldText.asObservable(),
    //            descriptionFieldText.asObservable(),
    //            priceFieldText.asObservable(),
    //            currencyFieldText.asObservable(),
    //            adressFieldText.asObservable(),
    //            nameFieldText.asObservable(),
    //            phoneNumberFieldText.asObservable()
    //        ))
    
    lazy var route: Signal<Route> = Signal
        .merge(
            _addAdvertisementTapped.asObservable()
                .withLatestFrom(Observable.combineLatest(totalAreaFieldText.asObservable(),
                                                    kitchenAreaFieldText.asObservable(),
                                                    ceilingHeightFieldText.asObservable(),
                                                    floorFieldText.asObservable(),
                                                    floorOfHousFieldText.asObservable(),
                                                    yearsOfConstructionFieldText.asObservable(),
                                                    descriptionFieldText.asObservable(),
                                                    priceFieldText.asObservable(),
                                                    currencyFieldText.asObservable(),
                                                    adressFieldText.asObservable(),
                                                    nameFieldText.asObservable(),
                                                    phoneNumberFieldText.asObservable()
                                                   ))
                .flatMapLatest { totalArea, kitchenArea, ceilingHeight, floor, floorOfTheHouse, yearOfConstruction, descriptions, price, currency, address, name, phoneNumber in
                    AdvertisementRepository.shared.AddAdvertisement(totalArea: totalArea, kitchenArea: kitchenArea, ceilingHeight: ceilingHeight, floor: floor, floorOfTheHouse: floorOfTheHouse, yearOfConstruction: yearOfConstruction, descriptions: descriptions, price: price, currency: currency, address: address, name: name, phoneNumber: phoneNumber)
                        .debug("Add Advertisement Result")
                        .asSignal(onErrorSignalWith: .never())
                }
                .debug("Add Advertisement")
                .filter { $0 == true }
                .mapTo(.adAdvertisement)
                .asSignal(onErrorSignalWith: .never())
        )
    
    init() {
        _addAdvertisementTapped.asSignal().emit(onNext: { print("Advertisement Added") }).disposed(by: disposeBag)
    }
    
}


