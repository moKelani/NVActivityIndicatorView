// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NVActivityIndicatorView",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "NVActivityIndicatorView", targets: ["NVActivityIndicatorView"]),
        .library(name: "NVActivityIndicatorViewExtended", targets: ["NVActivityIndicatorViewExtended"])
    ],
    targets: [
        .target(name: "NVActivityIndicatorView", path: "Sources/Base"),
        .target(name: "NVActivityIndicatorViewExtended",
                dependencies: ["NVActivityIndicatorView"],
                path: "Sources/Extended")
    ]
)
