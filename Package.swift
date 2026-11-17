// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "IQKeyboardManagerSwift",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IQKeyboardManagerSwift",
            targets: ["IQKeyboardManagerSwift"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/cdanielabr/IQKeyboardNotification.git", from: "main"),
        .package(url: "https://github.com/cdanielabr/IQTextInputViewNotification.git", from: "main"),
        .package(url: "https://github.com/cdanielabr/IQKeyboardToolbarManager.git", from: "main"),
        .package(url: "https://github.com/cdanielabr/IQKeyboardReturnManager.git", from: "main"),
        .package(url: "https://github.com/cdanielabr/IQTextView.git", from: "main")
    ],
    targets: [
        .target(name: "IQKeyboardManagerSwift",
                dependencies: [
                    "IQKeyboardNotification",
                    "IQTextInputViewNotification",
                    "IQKeyboardToolbarManager",
                    "IQKeyboardReturnManager",
                    "IQTextView"
                ],
                path: "IQKeyboardManagerSwift",
                resources: [
                    .copy("PrivacyInfo.xcprivacy")
                ],
                linkerSettings: [
                    .linkedFramework("UIKit")
                ]
               )
    ]
)
