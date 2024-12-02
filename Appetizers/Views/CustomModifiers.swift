//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Alicia Li on 6/26/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(.brandPrimary)
            .foregroundColor(.white)
            .fontWeight(.medium)
            .cornerRadius(10)
    }
}

