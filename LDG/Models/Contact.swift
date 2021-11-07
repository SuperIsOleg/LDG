//
//  Contact.swift
//  LDG
//
//  Created by Home on 7.11.21.
//

import Foundation
import RealmSwift

class Contact: Object {
    @Persisted var mobilePhone: Int?
    @Persisted var firstName: String = ""
    @Persisted var lastName: String = ""

}
