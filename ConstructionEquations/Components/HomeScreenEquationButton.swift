//
//  HomeScreenEquationButton.swift
//  ConstructionEquations
//
//  Created by Robert J. Sarvis Jr on 3/17/24.
//

import SwiftUI
import LaTeXSwiftUI

struct HomeScreenEquationButton: View {
    @EnvironmentObject var storekitStore: StorekitStore
    let equation: Equation
    @Binding var selectedEquation: Equation?
    @State var shouldShowLockedFunctionModal = false
    
    private var isDisabled: Bool {
        return !storekitStore.hasPurchasedUnlockAdvancedEquations && equation.filters.contains(.advancedFunctions)
    }
    
    var body: some View {
        Button(action: {
            if !isDisabled {
                selectedEquation = equation
            } else {
                shouldShowLockedFunctionModal = true
            }
        }) {
            HStack {
                LaTeX(equation.title)
                Spacer()
            }
            .modifier(CustomizableRoundedBorderView(isDisabled: isDisabled))
            .frame(height: 60)
        }
        .padding(.horizontal)
        .sheet(isPresented: $shouldShowLockedFunctionModal, content: {
            VStack {
                HStack {
                    Button(action: {
                        shouldShowLockedFunctionModal = false
                    }, label: {
                        Image(systemName: "x.circle")
                            .font(.title)
                    })
                    Spacer()
                }
                .padding()
                
                Text("This equation is part of the Advanced Equations Pack. Please visit Settings to unlock Advanced Functions.")
                    .foregroundStyle(.accent)
                
                Spacer()
            }
                .presentationDetents([.fraction(0.3)])
        })
    }
}
