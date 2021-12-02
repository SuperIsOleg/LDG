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
    
    enum Route {
        case viewingAdvertisement
        case button
    }
    
    private let disposeBag = DisposeBag()

    private let _buttonTapped = PublishRelay<Void>()
    func buttonTapped() {
        _buttonTapped.accept(())
    }
    
    private let _apartmenetSelected = PublishRelay<Int>()
    func apartmenetSelected(index: Int) {
        _apartmenetSelected.accept(index)
    }

    lazy var route: Signal<Route> = Signal.merge(_buttonTapped.asSignal().mapTo(.button),
                                                 _apartmenetSelected.asSignal().map({ Index in
            .viewingAdvertisement
    }))
    

    init() {
        _buttonTapped.asSignal().emit(onNext: { print("NEXT VC") }).disposed(by: disposeBag)
    }
}
