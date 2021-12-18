//
//  Price.swift
//  LDG
//
//  Created by Home on 7.11.21.
//

import Foundation
import RealmSwift

class Price: Object {
    @Persisted var price: String = ""
    @Persisted var currency: String = ""
}
