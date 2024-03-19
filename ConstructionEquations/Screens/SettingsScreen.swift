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
            
            VStack {}
                .padding(.vertical)
            
            Text("[Contact Support](https://rjsappdev.wixsite.com/construction/general-5)")
                .modifier(RoundedBorderView())
            
            Text("[Privacy Policy](https://rjsappdev.wixsite.com/construction/privacy-policy)")
                .modifier(RoundedBorderView())
            
            Text("[EULA](https://rjsappdev.wixsite.com/construction/eula)")
                .modifier(RoundedBorderView())
        }
        .padding(.horizontal)
        .frame(maxWidth: 400)
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsScreen()
        .environmentObject(StorekitStore())
}
