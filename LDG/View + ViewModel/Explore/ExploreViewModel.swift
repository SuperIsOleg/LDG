//
//  ExploreViewModel.swift
//  LDG
//
//  Created by Home on 21.10.21.
//

import Foundation
import RxSwift
import RxRelay
import RxCocoa
import RealmSwift

final class ExploreViewModel {
    
    private let disposeBag = DisposeBag()

    private let _buttonTapped = PublishRelay<Void>()
    func buttonTapped() {
        _buttonTapped.accept(())
    }

    lazy var route: Signal<Void> = _buttonTapped.asSignal()

    init() {
        _buttonTapped.asSignal().emit(onNext: { print("NEXT VC") }).disposed(by: disposeBag)
    }

//    try! realm.write {
//        let price = realm.create(Price.self)
//        price.price = 500
//    }
    
}
