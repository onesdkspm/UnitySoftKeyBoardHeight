// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "UnitySoftKeyBoardHeight",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "UnitySoftKeyBoardHeight",
            targets: ["UnitySoftKeyBoardHeightWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.0"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "UnitySoftKeyBoardHeightWrapper",
            dependencies: [
                .byName(name: "UnitySoftKeyBoardHeight"),
                .product(name: "UnityBridge", package: "UnityBridge"),
            ],
            path: "UnitySoftKeyBoardHeightWrapper",
            linkerSettings: [
                // iOS 系统框架
                
                // 系统库
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "UnitySoftKeyBoardHeight",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/UnitySoftKeyBoardHeight/2.0.2-dev-1481112/UnitySoftKeyBoardHeight.xcframework.zip",
            checksum: "82d32d5b41d6faa7fe7f0bdb47d381a46bafd73c50eb850e2fb0cadb2c5e2d67"
        )
    ]
)
