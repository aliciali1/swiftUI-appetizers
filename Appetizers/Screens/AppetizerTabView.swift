//
//  ContentView.swift
//  Appetizers
//
//  Created by Alicia Li on 6/19/24.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house")}
            AccountView()
                .tabItem { Label ("Account", systemImage: "person")}

            OrderView()
                .tabItem { Label("Order", systemImage: "bag")}
                .badge(order.items.count)

        }
        //.accentColor(.brandPrimary1)
    }
}

#Preview {
    AppetizerTabView()
}
