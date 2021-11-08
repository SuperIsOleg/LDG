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
        
    }

//    private let disposeBag = DisposeBag()
//
//    private let _buttonTapped = PublishRelay<Void>()
//    func buttonTapped() {
//        _buttonTapped.accept(())
//    }
//
//    lazy var route: Signal<Void> = _buttonTapped.asSignal()
//
//    init() {
//        _buttonTapped.asSignal().emit(onNext: { print("NEXT VC") }).disposed(by: disposeBag)
//    }

    
    private let _creatTapped = PublishRelay<Void>()
    func creatTapped() {
        _creatTapped.accept(())
    }

    private let _houseNumberFieldChanged = PublishRelay<String>()
    func houseNumberFieldChanged(_ text: String) {
        _houseNumberFieldChanged.accept(text)
    }
    
    private let _storeyFieldChanged = PublishRelay<String>()
    func storeyFieldChanged(_ text: String) {
        _storeyFieldChanged.accept(text)
    }
    
    private let _cityFieldChanged = PublishRelay<String>()
    func cityFieldChanged(_ text: String) {
        _cityFieldChanged.accept(text)
    }
    
    private let _countryFieldChanged = PublishRelay<String>()
    func countryFieldChanged(_ text: String) {
        _countryFieldChanged.accept(text)
    }
    
    private let _streetFieldChanged = PublishRelay<String>()
    func streetFieldChanged(_ text: String) {
        _streetFieldChanged.accept(text)
    }
    
    private let _mobilePhoneFieldChanged = PublishRelay<String>()
    func mobilePhoneFieldChanged(_ text: String) {
        _mobilePhoneFieldChanged.accept(text)
    }
    
    private let _firstNameFieldChanged = PublishRelay<String>()
    func firstNameFieldChanged(_ text: String) {
        _firstNameFieldChanged.accept(text)
    }
    
    private let _lastNameFieldChanged = PublishRelay<String>()
    func lastNameFieldChanged(_ text: String) {
        _lastNameFieldChanged.accept(text)
    }
    
    private let _descriptionsFieldChanged = PublishRelay<String>()
    func descriptionsFieldChanged(_ text: String) {
        _descriptionsFieldChanged.accept(text)
    }
    
    private let _numberOfRoomsFieldChanged = PublishRelay<String>()
    func numberOfRoomsFieldChanged(_ text: String) {
        _numberOfRoomsFieldChanged.accept(text)
    }
    
    private let _priceFieldChanged = PublishRelay<String>()
    func priceFieldChanged(_ text: String) {
        _priceFieldChanged.accept(text)
    }
    

    lazy var houseNumberFieldText = _houseNumberFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var storeyFieldText = _storeyFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var cityFieldText = _cityFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var countryFieldText = _countryFieldChanged
        .asDriver(onErrorJustReturn: "")
        .startWith("")
    
    lazy var streetFieldText = _streetFieldChanged.asDriver(onErrorJustReturn: "").startWith("")
    
    lazy var mobilePhoneFieldText = _mobilePhoneFieldChanged.asDriver(onErrorJustReturn: "").startWith("")
    
    lazy var firstNameFieldText = _firstNameFieldChanged.asDriver(onErrorJustReturn: "").startWith("")
    
    lazy var lastNameFieldText = _lastNameFieldChanged.asDriver(onErrorJustReturn: "").startWith("")
    
    lazy var descriptionsFieldText = _descriptionsFieldChanged.asDriver(onErrorJustReturn: "").startWith("")
    
    lazy var numberOfRoomsFieldText = _numberOfRoomsFieldChanged.asDriver(onErrorJustReturn: "").startWith("")
    
    lazy var priceFieldText = _priceFieldChanged.asDriver(onErrorJustReturn: "").startWith("")
    



//    lazy var route: Signal<Route> = Signal
//        .merge(
//            _creatTapped.asObservable()
//                .withLatestFrom(Observable.combineLatest(houseNumberFieldChanged.asObservable(), .asObservable()))
//                .flatMapLatest { login, in
////                    SessionRepository.shared.logUserIn(login: login, password: password)
//                }
//                .debug("SESSION LOGIN")
//                .filter { $0 == true }
//                .mapTo(.loginSuccess)
//                .asSignal(onErrorSignalWith: .never())
//            )

    init() {
    }

}
    

