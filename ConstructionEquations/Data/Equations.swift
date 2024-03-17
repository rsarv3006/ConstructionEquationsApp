import Foundation

let equations: [EquationSection] = [
    EquationSection(
        title: "Pythagorean Theorem",
        equations: [
            ConstructionEquation(
                id: .pythagoreanTheorem1,
                title: "$c^2 = a^2 + b^2$",
                description: PythagoreanTheoremDescription,

                equation: ({ sides in
                    let a = sides[0]
                    let b = sides[1]
                    return sqrt(a * a + b * b)
                }),

                filters: [],
                fieldLabels: ["A", "B", "C"]
            ),

            ConstructionEquation(
                id: .pythagoreanTheorem2,
                title: "$a = \\sqrt{c^2 - b^2}$",
                description: PythagoreanTheoremDescription,

                equation: ({ sides in
                    let c = sides[0]
                    let b = sides[1]
                    return sqrt(c * c - b * b)
                }),

                filters: [.advancedFunctions],
                fieldLabels: ["C", "B", "A"]
            ),

            ConstructionEquation(
                id: .pythagoreanTheorem3,
                title: "$b = \\sqrt{c^2 - a^2}$",
                description: PythagoreanTheoremDescription,

                equation: ({ sides in
                    let c = sides[0]
                    let a = sides[1]
                    return sqrt(c * c - a * a)
                }),

                filters: [.advancedFunctions],
                fieldLabels: ["C", "A", "B"]
            ),
        ]
    ),

    EquationSection(title: "Volumetric Cubic Yards", equations: [
        ConstructionEquation(id: .cubicYard1, title: "$volume = l * w * h$", description: CubicYardDescription, equation: { sides in
            let l = sides[0]
            let w = sides[1]
            let h = sides[2]
            return l * w * h
        }, filters: [], fieldLabels: ["Length", "Width", "Height", "Cubic Yards"]),
        ConstructionEquation(id: .cubicYard2, title: "$l = volume / (w * h)$", description: CubicYardDescription, equation: { sides in
            let c = sides[0]
            let w = sides[1]
            let h = sides[2]
            return c / (w * h)
        }, filters: [.advancedFunctions], fieldLabels: ["Cubic Yards", "Width", "Height", "Length"]),
        ConstructionEquation(id: .cubicYard3, title: "$w = volume / (l * h)$", description: CubicYardDescription, equation: { sides in
            let c = sides[0]
            let l = sides[1]
            let h = sides[2]
            return c / (l * h)
        }, filters: [.advancedFunctions], fieldLabels: ["Cubic Yards", "Length", "Height", "Width"]),
        ConstructionEquation(id: .cubicYard4, title: "$h = volume / (l x w)$", description: CubicYardDescription, equation: { sides in
            let c = sides[0]
            let l = sides[1]
            let w = sides[2]
            return c / (l * w)
        }, filters: [.advancedFunctions], fieldLabels: ["Cubic Yards", "Length", "Width", "Height"]),
    ]),

    EquationSection(title: "Arch Calculator", equations: [
        ConstructionEquation(id: .arch1, title: "$focal = \\sqrt{width^2 - height^2}$", description: ArchDescription, equation: { inputs in
            let w = inputs[0]
            let h = inputs[1]
            return sqrt(w * w - h * h)
        }, filters: [], fieldLabels: ["Arch Width", "Arch Height", "Focal Point"]),
        ConstructionEquation(id: .arch2, title: "$width = \\sqrt{focal^2 + height^2}$", description: ArchDescription, equation: { inputs in
            let f = inputs[0]
            let h = inputs[1]
            return sqrt(f * f + h * h)
        }, filters: [.advancedFunctions], fieldLabels: ["Focal Point", "Arch Height", "Arch Width"]),
        ConstructionEquation(id: .arch3, title: "$height = \\sqrt{width^2 - focal^2}$", description: ArchDescription, equation: { inputs in
            let w = inputs[0]
            let f = inputs[1]
            return sqrt(w * w - f * f)
        }, filters: [.advancedFunctions], fieldLabels: ["Arch Width", "Focal Point", "Arch Height"]),
    ]),
]
