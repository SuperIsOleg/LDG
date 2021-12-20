//
//  ViewingAdvertisementViewModel.swift
//  LDG
//
//  Created by Home on 28.11.21.
//

import Foundation
import RxSwift
import RxRelay
import RxCocoa
import RealmSwift

final class ViewingAdvertisementViewModel {
    
    private let disposeBag = DisposeBag()
    
    struct Cell {
        var address: String
        var price: String
    }
 
    private var viewingArray = BehaviorRelay<[Advertisement]>(value: [])
    
    lazy var cells = viewingArray.asDriver()
        .map {
            $0.map { (advertisement: Advertisement) -> Cell in
                Cell(address: advertisement.address?.address ?? "", price: advertisement.price?.price ?? "" )
            }
        }

    private let _buttonTapped = PublishRelay<Void>()
    func buttonTapped() {
        _buttonTapped.accept(())
    }

    lazy var route: Signal<Void> = _buttonTapped.asSignal()

    init() {
        _buttonTapped.asSignal().emit(onNext: { print("NEXT VC") }).disposed(by: disposeBag)
    }
}
