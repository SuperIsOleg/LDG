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
    
    enum Route {
        case viewingAdvertisement
        case button
        
    }
    
    struct Cell {
        var addres: String
        var price: String
    }
 
    private var exploreArray = BehaviorRelay<[Advertisement]>(value: [])
    
    lazy var cells = exploreArray.asDriver()
        .map {
            $0.map { (advertisement: Advertisement) -> Cell in
                Cell(addres: advertisement.address?.address ?? "", price: advertisement.price?.price ?? "" )
            }
        }

    private let _refresh = PublishRelay<Void>()
    func refresh() {
        _refresh.accept(())
    }

    private let _buttonTapped = PublishRelay<Void>()
    func buttonTapped() {
        _buttonTapped.accept(())
    }
    
    private let _likeButtonTaped = PublishRelay<Void>()
    func likeButtonTaped() {
        _likeButtonTaped.accept(())
    }
    
    private let _apartmenetSelected = PublishRelay<Int>()
    func apartmenetSelected(index: Int) {
        _apartmenetSelected.accept(index)
    }

    lazy var route: Signal<Route> = Signal
        .merge(_buttonTapped.asSignal()
                .mapTo(.button),
               _apartmenetSelected.asSignal()
                .map({ Index in
            .viewingAdvertisement}),
            _likeButtonTaped.asSignal()
                .mapTo(.button)
    )
    
    
    init(advertisementRepository: AdvertisementRepository) {
        
        advertisementRepository.getAdvertisement()
            .subscribe(onSuccess: {
                self.exploreArray.accept(Array($0))
            })
            .disposed(by: disposeBag)

        _refresh
            .flatMap {
                advertisementRepository.getAdvertisement()
            }
            .subscribe(onNext: {
                self.exploreArray.accept(Array($0))
            })
            .disposed(by: disposeBag)
    }
    
    
    init() {
        _buttonTapped.asSignal().emit(onNext: { print("NEXT VC") }).disposed(by: disposeBag)
        
    }
}
