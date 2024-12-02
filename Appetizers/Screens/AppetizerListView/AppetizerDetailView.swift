//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Alicia Li on 6/25/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order // expects to have order in the envirnment
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack{
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40) {
                    
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                    
                }
                .padding(.horizontal, 30)
            }
            
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                //APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
//                    .buttonStyle(.bordered)
//                    .tint(.brandPrimary)
//                    .controlSize(.large)
//                    .padding(.bottom, 30)
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 30)
            
        }
        
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius:40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
        
        
        
        
        
    }
}


struct NutritionInfo: View {
    let title: String
    let value: Int
    var body: some View {
        VStack (spacing: 5){
            Text(title)
                .font(.caption)
                .bold()
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
