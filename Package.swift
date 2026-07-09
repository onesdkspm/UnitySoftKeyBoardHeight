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
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.3"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/UnitySoftKeyBoardHeight/2.0.3-dev-1482664/UnitySoftKeyBoardHeight.xcframework.zip",
            checksum: "92468c89f09dc166cbb88bfc2df571e1f99466af20b12a53fd022dc5207c9ff2"
        )
    ]
)
