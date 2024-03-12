import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Equations")
                    .font(.title)
                    .padding()

                ScrollView {
                    ForEach(equations, id: \.title) { section in
                        Section(header:
                            HStack {
                                Text(section.title)
                                    .font(.title2)

                                Spacer()
                            }) {
                                ForEach(section.equations, id: \.id) { equation in
                                    HStack {
                                        NavigationLink(destination: EquationScreen(equation: equation)) {
                                            Text(equation.title)
                                        }

                                        Spacer()
                                    }
                                    .padding()
                                }
                            }
                    }
                }
            }
        }
    }
}
