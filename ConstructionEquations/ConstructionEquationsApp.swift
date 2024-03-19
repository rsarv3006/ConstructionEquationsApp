//
//  ConstructionEquationsApp.swift
//  ConstructionEquations
//
//  Created by Robert J. Sarvis Jr on 3/13/24.
//

import SwiftUI

@main
struct ConstructionEquationsApp: App {
    @StateObject private var storekitStore = StorekitStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(storekitStore)
        }
    }
}
