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
    
    init() {
    }

 
    lazy var totalAreaField = _totalAreaTextFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var kitchenAreaField = _kitchenAreaFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var ceilingHeightField = _ceilingHeightFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var floorField = _floorFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var floorOfHousField = _floorOfHousFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var yearsOfConstructionField = _yearsOfConstructionFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var descriptionField = _descriptionFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var priceField = _priceFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var currencyField = _currencyFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var adressField = _adressFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var nameField = _nameFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var phoneNumberField = _phoneNumberFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
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
    
   
    
}


