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
    var descriptions: List<Description> = List()
    var image: List<Image> = List()
    var like: List<Like> = List()
    var numberOfRooms: List<NumberOfRooms> = List()
    var price: List<Price> = List()
    
    
}
