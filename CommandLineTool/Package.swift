// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommandLineTool",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/jakeheis/SwiftCLI", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/kareman/SwiftShell", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/oarrabi/FileUtils.git", .upToNextMajor(from: "0.0.0")),
        .package(url: "https://github.com/Swiftline/Swiftline.git", .upToNextMajor(from: "0.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CommandLineTool",
            dependencies: ["CommandLineToolCore"]),
        .target(
            name: "CommandLineToolCore",
            dependencies: ["SwiftCLI", "SwiftShell", "FileUtils", "Swiftline"])
    ]
)
