//
//  Advertisement.swift
//  LDG
//
//  Created by Home on 7.11.21.
//

import Foundation
import RealmSwift

class Advertisement: Object {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var image: Image?
    @Persisted var like: List<Like> = List()
    @Persisted var typeOfTransaction: TypeOfTransaction?
    @Persisted var numberOfRooms: NumberOfRooms?
    @Persisted var typeOfRooms: TypeOfRooms?
    @Persisted var totalArea: TotalArea?
    @Persisted var kitchenArea: KitchenArea?
    @Persisted var balcony: Balcony?
    @Persisted var ceilingHeight: CeilingHeight?
    @Persisted var availabilityOfFurniture: AvailabilityOfFurniture?
    @Persisted var floor: Floor?
    @Persisted var floorOfTheHouse: FloorOfTheHouse?
    @Persisted var wallMaterial: WallMaterial?
    @Persisted var yearOfConstruction: YearOfConstruction?
    @Persisted var inANewBuilding: InANewBuilding?
    @Persisted var condition: Condition?
    @Persisted var descriptions: Description?
    @Persisted var price: Price?
    @Persisted var currency: Price?
    @Persisted var exchange: Exchange?
    @Persisted var address: Address?
    @Persisted var name: Name?
    @Persisted var phoneNumber: PhoneNumber?  
}
