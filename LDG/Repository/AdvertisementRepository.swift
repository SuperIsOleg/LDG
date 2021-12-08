//
//  AdvertisementRepository.swift
//  LDG
//
//  Created by Home on 4.12.21.
//

import Foundation
import RealmSwift
import RxSwift
import RxCocoa
//import RxRealm

final class AdvertisementRepository {
    static let shared = AdvertisementRepository()
    
    private lazy var realm = try! Realm()
    
    init() {
    }
    
    func AddAdvertisement(typeOfTransaction:String, numberOfRooms:String, typeOfRooms:String, balcony:String, availabilityOfFurniture:String, wallMaterial:String, condition:String, totalArea: String, kitchenArea: String, ceilingHeight: String, floor: String, floorOfTheHouse: String, yearOfConstruction: String, descriptions: String, price: String, currency: String, address: String, name: String, phoneNumber: String) -> Single<Bool>  {
       
        let advertisement = Advertisement()
        advertisement.typeOfTransaction?.typeOfTransaction = typeOfTransaction
        advertisement.numberOfRooms?.numberOfRooms = numberOfRooms
        advertisement.typeOfRooms?.typeOfRooms = typeOfRooms
        advertisement.balcony?.balcony = balcony
        advertisement.availabilityOfFurniture?.availabilityOfFurniture = availabilityOfFurniture
        advertisement.wallMaterial?.wallMaterial = wallMaterial
        advertisement.condition?.condition = condition
        advertisement.totalArea?.totalArea = totalArea
        advertisement.kitchenArea?.kitchenArea = kitchenArea
        advertisement.ceilingHeight?.ceilingHeight = ceilingHeight
        advertisement.floor?.floor = floor
        advertisement.floorOfTheHouse?.floorOfTheHouse = floorOfTheHouse
        advertisement.yearOfConstruction?.yearOfConstruction = yearOfConstruction
        advertisement.descriptions?.descriptions = descriptions
        advertisement.price?.price = price
        advertisement.price?.currency = currency
        advertisement.address?.address = address
        advertisement.name?.name = name
        advertisement.phoneNumber?.phoneNumber = phoneNumber
    
        try! realm.write {
            realm.add(advertisement)
        }
        
        return .just(true).delay(.seconds(1), scheduler: MainScheduler.asyncInstance)
    }
    
}
