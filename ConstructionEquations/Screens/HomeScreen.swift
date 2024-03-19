import LaTeXSwiftUI
import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var storekitStore: StorekitStore
    @State private var selectedEquation: Equation? = nil
    @State private var isLoadingStorekit = true
    
    var body: some View {
        if !isLoadingStorekit {
            ScrollView {
                Text("Construction Equations")
                    .font(.title)
                    .foregroundStyle(.accent)
                    .padding()
                ForEach(equations, id: \.title) { section in
                    Section(header:
                                HStack {
                        Text(section.title)
                            .font(.title2)
                            .foregroundStyle(Color.accentColor)
                            .padding(.horizontal)
                        Spacer()
                    }) {
                        ForEach(section.equations, id: \.id) { equation in
                            HomeScreenEquationButton(equation: equation, selectedEquation: $selectedEquation)
                        }
                        .padding(.bottom)
                    }
                }
            }
            .navigationDestination(isPresented: Binding<Bool>(
                get: { selectedEquation != nil },
                set: { _ in selectedEquation = nil }
            )) {
                if let equation = selectedEquation {
                    EquationTabView(equation: equation)
                }
            }
        } else {
            ProgressView()
                .onAppear {
                    Task {
                        await storekitStore.updateCustomerProductStatus()
                        isLoadingStorekit = false
                    }
                }
        }
    }
}
