//
//  FilterViewModel.swift
//  LDG
//
//  Created by Home on 21.11.21.
//

import Foundation
import RxSwift
import RxRelay
import RxCocoa

final class FilterViewModel {

    private let disposeBag = DisposeBag()

    private let _buttonTapped = PublishRelay<Void>()
    func buttonTapped() {
        _buttonTapped.accept(())
    }

    lazy var route: Signal<Void> = _buttonTapped.asSignal()

    init() {
        _buttonTapped.asSignal().emit(onNext: { print("NEXT VC") }).disposed(by: disposeBag)
    }

}
