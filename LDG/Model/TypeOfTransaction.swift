//
//  TypeOfTransaction.swift
//  LDG
//
//  Created by Home on 4.12.21.
//

import Foundation
import RealmSwift

class TypeOfTransaction: Object {
    @Persisted var typeOfTransaction: String = ""
}
