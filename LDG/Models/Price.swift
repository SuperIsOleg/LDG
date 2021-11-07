//
//  Price.swift
//  LDG
//
//  Created by Home on 7.11.21.
//

import Foundation
import RealmSwift

class Price: Object {
    @Persisted(primaryKey: true) var id: ObjectId
    
    @Persisted var price: Int?
    

}
