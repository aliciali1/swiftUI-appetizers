//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Alicia Li on 6/19/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order) // injecting order into AppetizerTabView's environment
        }
    }
}
