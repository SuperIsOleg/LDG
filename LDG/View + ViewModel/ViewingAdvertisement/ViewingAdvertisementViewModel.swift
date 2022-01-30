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
        var name: String
        var phoneNumber: String
        var typeOfTransaction: String
        var numberOfRooms: String
        var typeOfRooms: String
        var totalArea: String
        var kitchenArea: String
        var balcony: String
        var ceilingHeight: String
        var availabilityOfFurniture: String
        var floor: String
        var floorOfTheHouse: String
        var wallMaterial: String
        var yearOfConstruction: String
        var inANewBuilding: String
        var condition: String
        var exchange: String
    }
 
    private var viewingArray = BehaviorRelay<[Advertisement]>(value: [])
    
    lazy var cells = viewingArray.asDriver()
        .map {
            $0.map { (advertisement: Advertisement) -> Cell in
                Cell(address: advertisement.address?.address ?? "Адрес не указан",
                     price: advertisement.price?.price ?? "Цена не указана",
                     name: advertisement.name?.name ?? "Имя не указано",
                     phoneNumber: advertisement.phoneNumber?.phoneNumber ?? "Телефон не указан",
                     typeOfTransaction: advertisement.typeOfTransaction?.typeOfTransaction ?? "",
                     numberOfRooms: advertisement.numberOfRooms?.numberOfRooms ?? "",
                     typeOfRooms: advertisement.typeOfRooms?.typeOfRooms ?? "",
                     totalArea: advertisement.totalArea?.totalArea ?? "",
                     kitchenArea: advertisement.kitchenArea?.kitchenArea ?? "",
                     balcony: advertisement.balcony?.balcony ?? "",
                     ceilingHeight: advertisement.ceilingHeight?.ceilingHeight ?? "",
                     availabilityOfFurniture: advertisement.availabilityOfFurniture?.availabilityOfFurniture ?? "",
                     floor: advertisement.floor?.floor ?? "",
                     floorOfTheHouse: advertisement.floorOfTheHouse?.floorOfTheHouse ?? "",
                     wallMaterial: advertisement.wallMaterial?.wallMaterial ?? "",
                     yearOfConstruction: advertisement.yearOfConstruction?.yearOfConstruction ?? "",
                     inANewBuilding: advertisement.inANewBuilding?.inANewBuilding ?? "",
                     condition: advertisement.condition?.condition ?? "",
                     exchange: advertisement.exchange?.exchange ?? ""
                )
            }
        }

    private let _buttonTapped = PublishRelay<Void>()
    func buttonTapped() {
        _buttonTapped.accept(())
    }

    lazy var route: Signal<Void> = _buttonTapped.asSignal()

    init(advertisementRepository: AdvertisementRepository) {
        advertisementRepository.getAdvertisement()
            .subscribe(onSuccess: {
                self.viewingArray.accept(Array($0))
            })
            .disposed(by: disposeBag)
    }
}
