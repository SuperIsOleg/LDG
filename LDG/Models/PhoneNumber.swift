//
//  PhoneNumber.swift
//  LDG
//
//  Created by Home on 4.12.21.
//

import Foundation
import RealmSwift

class PhoneNumber: Object {
    @Persisted var phoneNumber: String = ""

}
