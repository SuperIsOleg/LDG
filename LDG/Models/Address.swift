//
//  Address.swift
//  LDG
//
//  Created by Home on 7.11.21.
//

import Foundation
import RealmSwift

class Address: Object {
    @Persisted(primaryKey: true) var id: ObjectId
    
    @Persisted var houseNumber: Int?
    @Persisted var storey: Int?
    @Persisted var city: String = ""
    @Persisted var country: String = ""
    @Persisted var street: String = ""
    
}
