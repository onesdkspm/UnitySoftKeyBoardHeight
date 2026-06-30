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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/UnitySoftKeyBoardHeight/1.0.0-dev-1474868/UnitySoftKeyBoardHeight.xcframework.zip",
            checksum: "0ac277d5e74efe50a963094ac66981668214fbac6bd6d18fb45b4a3f24b13751"
        )
    ]
)
