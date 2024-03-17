//
//  EquationTabView.swift
//  ConstructionEquations
//
//  Created by Robert J. Sarvis Jr on 3/14/24.
//

import SwiftUI

struct EquationTabView: View {
    @State private var selectedTab = "One"
    var equation: ConstructionEquation

    var body: some View {
        TabView(selection: $selectedTab) {
            EquationScreen(equation: equation)
                .tag("One")
                .tabItem {
                    Label("Equation", systemImage: "function")
                }

            EquationDescriptionScreen(equation: equation)
                .tabItem {
                    Label("Description", systemImage: "doc.text")
                }
                .tag("Two")
        }
    }
}

#Preview {
    EquationTabView(equation: equations.first!.equations.first!)
}
