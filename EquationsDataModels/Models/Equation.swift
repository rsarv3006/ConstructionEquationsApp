import Foundation

public struct Equation {
    let id: EquationIds
    let title: String
    let description: String

    let equation: ([Double]) -> Double
    let filters: [EquationFilters]
    let fieldLabels: [String]
}
