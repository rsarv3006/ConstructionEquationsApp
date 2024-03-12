import SwiftUI

struct EquationScreen: View {
    
    var equation: ConstructionEquation
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(equation.title)
                    .font(.title)
                    .padding()
                Text(equation.description)
                    .padding()
            }
        }
        .navigationBarTitle(equation.title)
    }
}
