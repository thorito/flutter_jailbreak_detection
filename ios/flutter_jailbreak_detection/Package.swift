// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "flutter_jailbreak_detection",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "flutter-jailbreak-detection",
            targets: ["flutter_jailbreak_detection"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/securing/IOSSecuritySuite",
            from: "1.9.0"
        ),
        .package(
            name: "FlutterFramework",
            path: "../FlutterFramework"
        )
    ],
    targets: [
        .target(
            name: "flutter_jailbreak_detection",
            dependencies: [
                "IOSSecuritySuite",
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            path: "Classes"
        )
    ]
)
