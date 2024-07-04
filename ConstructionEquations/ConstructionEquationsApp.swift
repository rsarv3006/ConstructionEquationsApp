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
