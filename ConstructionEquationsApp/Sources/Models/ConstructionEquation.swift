import Foundation

public struct ConstructionEquation {
    let id: EquationIds
    let title: String
    let description: String

    let equation: ([Double]) -> Double
    let filters: [EquationFilters]
    let fieldLabels: [String]
}
