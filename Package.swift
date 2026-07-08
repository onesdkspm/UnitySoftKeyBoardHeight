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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/UnitySoftKeyBoardHeight/2.0.3-dev-1481414/UnitySoftKeyBoardHeight.xcframework.zip",
            checksum: "eae69f4e7166e0efde604dddcbbfc8ca4362643f604977716a6ab6ae02cbd9c0"
        )
    ]
)
