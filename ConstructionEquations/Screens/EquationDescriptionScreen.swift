//
//  EquationDescriptionScreen.swift
//  ConstructionEquations
//
//  Created by Robert J. Sarvis Jr on 3/14/24.
//

import LaTeXSwiftUI
import SwiftUI

struct EquationDescriptionScreen: View {
    var equation: ConstructionEquation

    var body: some View {
        ScrollView {
            LaTeX(equation.title)
                .font(.title2)
                .foregroundColor(.accent)
                .padding()

            LaTeX(equation.description)
                .foregroundColor(.accent)
                .padding()
        }
    }
}

#Preview {
    EquationDescriptionScreen(equation: equations.first!.equations.first!)
}
