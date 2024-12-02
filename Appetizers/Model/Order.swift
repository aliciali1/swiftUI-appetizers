//
//  Order.swift
//  Appetizers
//
//  Created by Alicia Li on 6/26/24.
//

//difference between view model and environment: view model is coupled with a specific view while environment is used with multiple views

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
}


