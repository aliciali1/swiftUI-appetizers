//
//  AppetizerPreview.swift
//  Appetizers
//
//  Created by Alicia Li on 6/19/24.
//

import SwiftUI

struct AppetizerPreview: View {
    let appetizer: Appetizer
    var body: some View {
       
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .cornerRadius(8)
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 70)
            VStack (alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(String(format: "%.2f", appetizer.price))")
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
    
            Spacer()
                
                
        }
    }
}

#Preview {
    AppetizerPreview(appetizer: MockData.sampleAppetizer)
}
