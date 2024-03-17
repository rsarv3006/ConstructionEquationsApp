import LaTeXSwiftUI
import SwiftUI

struct HomeScreen: View {
    @State private var selectedEquation: ConstructionEquation? = nil

    var body: some View {
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
                            Button(action: {
                                selectedEquation = equation

                            }) {
                                HStack {
                                    LaTeX(equation.title)
                                    Spacer()
                                }
                                .foregroundStyle(.accent)
                                .padding([.horizontal, .vertical], 8)
                                .frame(maxWidth: .infinity)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.accentColor, lineWidth: 1)
                                )
                                .cornerRadius(10)
                                .frame(height: 60)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.horizontal)
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
    }
}

#Preview {
    HomeScreen()
}
