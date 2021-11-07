//
//  Advertisement.swift
//  LDG
//
//  Created by Home on 7.11.21.
//

import Foundation
import RealmSwift

class Advertisement: Object {
    
    var adress: List<Address> = List()
    var contact: List<Contact> = List()
    var descriptions: Description?
    var image: Image?
    var like: Like?
    var numberOfRooms: NumberOfRooms?
    var price: Price?
    
    
}
