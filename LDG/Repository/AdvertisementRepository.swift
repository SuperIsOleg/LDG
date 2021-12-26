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
    
    func getAdvertisement() -> Single<Results<Advertisement>> {
        return .just(realm.objects(Advertisement.self))
    }

    init() {
    }
    
    func AddAdvertisement(inANewBuilding:String, exchange:String, typeOfTransaction:String, numberOfRooms:String, typeOfRooms:String, balcony:String, availabilityOfFurniture:String, wallMaterial:String, condition:String, totalArea: String, kitchenArea: String, ceilingHeight: String, floor: String, floorOfTheHouse: String, yearOfConstruction: String, descriptions: String, price: String, currency: String, address: String, name: String, phoneNumber: String) -> Single<Bool>  {
       
        let advertisement = Advertisement()
        
        advertisement.inANewBuilding = InANewBuilding()
        advertisement.inANewBuilding?.inANewBuilding = inANewBuilding
        
        advertisement.exchange = Exchange()
        advertisement.exchange?.exchange = exchange
        
        advertisement.typeOfTransaction = TypeOfTransaction()
        advertisement.typeOfTransaction?.typeOfTransaction = typeOfTransaction
        
        advertisement.numberOfRooms = NumberOfRooms()
        advertisement.numberOfRooms?.numberOfRooms = numberOfRooms
        
        advertisement.typeOfRooms = TypeOfRooms()
        advertisement.typeOfRooms?.typeOfRooms = typeOfRooms
        
        advertisement.balcony = Balcony()
        advertisement.balcony?.balcony = balcony
        
        advertisement.availabilityOfFurniture = AvailabilityOfFurniture()
        advertisement.availabilityOfFurniture?.availabilityOfFurniture = availabilityOfFurniture
        
        advertisement.wallMaterial = WallMaterial()
        advertisement.wallMaterial?.wallMaterial = wallMaterial
        
        advertisement.condition = Condition()
        advertisement.condition?.condition = condition
        
        advertisement.totalArea = TotalArea()
        advertisement.totalArea?.totalArea = totalArea
        
        advertisement.kitchenArea = KitchenArea()
        advertisement.kitchenArea?.kitchenArea = kitchenArea
        
        advertisement.ceilingHeight = CeilingHeight()
        advertisement.ceilingHeight?.ceilingHeight = ceilingHeight
        
        advertisement.floor = Floor()
        advertisement.floor?.floor = floor
        
        advertisement.floorOfTheHouse = FloorOfTheHouse()
        advertisement.floorOfTheHouse?.floorOfTheHouse = floorOfTheHouse
        
        advertisement.yearOfConstruction = YearOfConstruction()
        advertisement.yearOfConstruction?.yearOfConstruction = yearOfConstruction
        
        advertisement.descriptions = Description()
        advertisement.descriptions?.descriptions = descriptions
        
        advertisement.price = Price()
        advertisement.price?.price = price
        advertisement.price?.currency = currency
        
        advertisement.address = Address()
        advertisement.address?.address = address
        
        advertisement.name = Name()
        advertisement.name?.name = name
        
        advertisement.phoneNumber = PhoneNumber()
        advertisement.phoneNumber?.phoneNumber = phoneNumber
    
        try! realm.write {
            realm.add(advertisement)
        }
        
        return .just(true).delay(.seconds(1), scheduler: MainScheduler.asyncInstance)
    }
    
}
