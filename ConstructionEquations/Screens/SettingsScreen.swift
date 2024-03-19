//
//  SettingsScreen.swift
//  ConstructionEquations
//
//  Created by Robert J. Sarvis Jr on 3/18/24.
//

import SwiftUI

struct SettingsScreen: View {
    @EnvironmentObject var store: StorekitStore
    
    var body: some View {
        ScrollView {
            if let product = store.unlockAdvancedEquationsPurchase {
                SettingsInAppPurchases(product: product)
                    .padding(.top)
            }
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsScreen()
        .environmentObject(StorekitStore())
}
