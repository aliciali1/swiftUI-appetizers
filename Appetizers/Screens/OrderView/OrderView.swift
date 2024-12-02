//
//  OrderView.swift
//  Appetizers
//
//  Created by Alicia Li on 6/19/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerPreview(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 35)
                    
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an item!")
                }
            }
            
                .navigationTitle("Orders")
        }
    }
    
    
}

#Preview {
    OrderView()
}
