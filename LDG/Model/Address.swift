//
//  Address.swift
//  LDG
//
//  Created by Home on 7.11.21.
//

import Foundation
import RealmSwift

class Address: Object {
    
    @Persisted var address: String = ""
    
}
