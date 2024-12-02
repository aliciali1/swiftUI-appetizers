//
//  User.swift
//  Appetizers
//
//  Created by Alicia Li on 6/26/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
