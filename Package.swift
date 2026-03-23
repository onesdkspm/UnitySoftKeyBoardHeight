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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/UnitySoftKeyBoardHeight/2.0.0-dev-1406399/UnitySoftKeyBoardHeight.xcframework.zip",
            checksum: "07de23e2bb2f49b9e8d47b05d839bacc65b6b8527101f63e1d8e6d724de5f05a"
        )
    ]
)
