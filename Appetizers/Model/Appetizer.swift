//
//  Appetizer.swift
//  Appetizers
//
//  Created by Alicia Li on 6/19/24.
//

import Foundation

//would need encodable if you had to send it back up to the server, decodable is enough to get it
struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001, name: "Test Appetizer", description: "This is test", price: 9.99, imageURL: "asian-flank-steak", calories: 99, protein: 99, carbs: 99)
    static let sampleAppetizer2 = Appetizer(id: 002, name: "Test Appetizer 2", description: "This is test", price: 9.99, imageURL: "asian-flank-steak", calories: 99, protein: 99, carbs: 99)
    static let sampleAppetizer3 = Appetizer(id: 003, name: "Test Appetizer 3", description: "This is test", price: 9.99, imageURL: "asian-flank-steak", calories: 99, protein: 99, carbs: 99)
    static let sampleAppetizer4  = Appetizer(id: 004, name: "Test Appetizer 4", description: "This is test", price: 9.99, imageURL: "asian-flank-steak", calories: 99, protein: 99, carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let orderItems = [sampleAppetizer, sampleAppetizer2, sampleAppetizer3, sampleAppetizer4]
}
