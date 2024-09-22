import ProjectDescription

let project = Project(
    name: "AppLoginVaporAuthentication",
    targets: [
        .target(
            name: "AppLoginVaporAuthentication",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.AppLoginVaporAuthentication",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["AppLoginVaporAuthentication/Sources/**"],
            resources: ["AppLoginVaporAuthentication/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "AppLoginVaporAuthenticationTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AppLoginVaporAuthenticationTests",
            infoPlist: .default,
            sources: ["AppLoginVaporAuthentication/Tests/**"],
            resources: [],
            dependencies: [.target(name: "AppLoginVaporAuthentication")]
        ),
    ]
)
