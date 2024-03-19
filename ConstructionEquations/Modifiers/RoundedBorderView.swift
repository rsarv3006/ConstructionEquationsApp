//
//  RoundedBorderView.swift
//  ConstructionEquations
//
//  Created by Robert J. Sarvis Jr on 3/19/24.
//

import SwiftUI

struct RoundedBorderView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.accent)
            .padding([.horizontal, .vertical], 8)
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.accentColor, lineWidth: 1)
                    .shadow(radius: 8, x: 2, y: 4)
            )
            .cornerRadius(10)
    }
}

#Preview {
    Text("Sign Up")
        .modifier(RoundedBorderView())
}
