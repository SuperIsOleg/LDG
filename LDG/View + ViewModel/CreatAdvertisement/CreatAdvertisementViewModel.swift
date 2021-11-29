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

    private let disposeBag = DisposeBag()

    private let _buttonTapped = PublishRelay<Void>()
    func buttonTapped() {
        _buttonTapped.accept(())
    }
    
    

    lazy var route: Signal<Void> = _buttonTapped.asSignal()

    init() {
        _buttonTapped.asSignal().emit(onNext: { print("NEXT VC") }).disposed(by: disposeBag)
    }

    private let _totalAreaTextFieldChanged = PublishRelay<String>()
    func totalAreaTextFieldChanged(_ text: String) {
        _totalAreaTextFieldChanged.accept(text)
    }

    lazy var totalAreaField = _totalAreaTextFieldChanged.asDriver(onErrorJustReturn: "").startWith("")

}
    

