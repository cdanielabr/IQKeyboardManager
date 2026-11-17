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
        .package(url: "https://github.com/cdanielabr/IQKeyboardNotification.git", branch: "main"),
        .package(url: "https://github.com/cdanielabr/IQTextInputViewNotification.git", branch: "main"),
        .package(url: "https://github.com/cdanielabr/IQKeyboardToolbarManager.git", branch: "main"),
        .package(url: "https://github.com/cdanielabr/IQKeyboardReturnManager.git", branch: "main"),
        .package(url: "https://github.com/cdanielabr/IQTextView.git", branch: "main")
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
