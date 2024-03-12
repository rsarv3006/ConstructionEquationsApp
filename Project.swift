import ProjectDescription

let project = Project(
    name: "ConstructionEquationsApp",
    targets: [
        .target(
            name: "ConstructionEquationsApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ConstructionEquationsApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["ConstructionEquationsApp/Sources/**"],
            resources: ["ConstructionEquationsApp/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "ConstructionEquationsAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ConstructionEquationsAppTests",
            infoPlist: .default,
            sources: ["ConstructionEquationsApp/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ConstructionEquationsApp")]
        ),
    ]
)
