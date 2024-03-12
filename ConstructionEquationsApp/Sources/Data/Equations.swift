import Foundation

let equations: [EquationSection] = [
    EquationSection(
        title: "Pythagorean Theorem",
        equations: [
    ConstructionEquation(
        id: .pythagoreanTheorem1,
        title: "C^2 = A^2 + B^2",
        description: "The Pythagorean theorem is a fundamental relation in Euclidean geometry among the three sides of a right triangle. It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides.",

        equation: ({ sides in
            let a = sides[0]
            let b = sides[1]
            return sqrt(a * a + b * b)
        }),

        filters: [],
        fieldLabels: ["A", "B", "C"]
    ),
    ]),
]
