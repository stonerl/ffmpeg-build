// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "FFmpeg",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "FFmpeg",
            type: .static,
            targets: ["_FFmpeg"]
        ),
        .library(
            name: "FFmpeg-GPL",
            type: .static,
            targets: ["_FFmpeg-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/stonerl/ffmpeg-build/releases/download/n7.0.2/Libavcodec-GPL.xcframework.zip",
            checksum: "1e32d4dd71d41750d3907cc162cd7e44b3aa81364191190733c6b1b1ee9c319d"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/stonerl/ffmpeg-build/releases/download/n7.0.2/Libavformat-GPL.xcframework.zip",
            checksum: "c17f8ced5178e2b675f9ecefcbd514ea19387aa4c82bee6a102961001e6e5a93"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/stonerl/ffmpeg-build/releases/download/n7.0.2/Libavfilter-GPL.xcframework.zip",
            checksum: "0da0dfa0b2152e647a22c54567a11f9b45b14064727c5ef75fc686f359bd6941"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/stonerl/ffmpeg-build/releases/download/n7.0.2/Libavutil-GPL.xcframework.zip",
            checksum: "2eb0c4f13da5c44928061450a39255332a730af5d0f3e31708dfb6c03f38b11f"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/stonerl/ffmpeg-build/releases/download/n7.0.2/Libswresample-GPL.xcframework.zip",
            checksum: "d7a873c674e34c9ed0855391546e4dd4564167510c0ad4cfcebf466fe149bfc9"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/stonerl/ffmpeg-build/releases/download/n7.0.2/Libswscale-GPL.xcframework.zip",
            checksum: "d1ae7e71879a4f20f0c949128bd1bd6455088e3b8aa8fca7bf451541e33277ae"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "89989ea14f7297d98083eb8adfba9b389f5b4886cb54fb3d5b6e8b915b7adf1d"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "46ad8e8fa5a6efe7bd31c9b3c56b20c1bc29a581083588d86e941d261d7dbe98"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "defd5623e6786543588001b8f33026395960a561540738deb6df6996d39f957d"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "c3b8f506fa32bcb3f9bf65096b0556c4f5973f846ee964577d783edbe8e6969d"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "47a34e7877f7ebd9175f5645059030e553276faa9a21b91e29fb7463b94e8daf"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "5f5cf903a2d52157c29ad304260709f618ce086afea02061241982f8425a6fb0"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "430ed1a8ff1a230bd93b6868021cde2aafb23c8cb2d586525836cac47c4f310f"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "300d2966c914e06f0211d8da0ea6208a345709b888e9cbbf1cdd94df26330359"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "4a3122a2027f021937ed0fa07173dca7f2c1c4c4202b7caf8043fa80408c0953"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "f607773598caa72435d8b19ce6a9d54fa7f26cde126b6b66c0a3d2804f084c68"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "af24cd1429069153f0ca5c650e0b374c27ae38283aca47cbbbc9edb3165b182e"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "589db9c241e6cc274f2825bee542add273febd0666ebd7ea8a402574ed76e9af"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ca4382ea4e17103fbcc979d0ddee69a6eb8967c0ab235cb786ffa96da5f512ed"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.2.9/MoltenVK.xcframework.zip",
            checksum: "02dd7f51814855b7db9eacd883042b3e9481eb658de6bc63290af80149f2b94f"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0-fix/Libshaderc_combined.xcframework.zip",
            checksum: "049236601b70155baeb78a124c8b30f3e4f31f5aa4c6d20370d58c62eca87ec3"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/lcms2.xcframework.zip",
            checksum: "bd2c27366f8b7adfe7bf652a922599891c55b82f5c519bcc4eece1ccff57c889"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/Libplacebo.xcframework.zip",
            checksum: "f32d20351289a080cd7288742747cd927553fde8c217f63263b838083d07a01a"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "eccfe37da9418e350bc6c1566890fa5b9585fbb87b8ceb664de77800ef17fe04"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/n7.0.2/Libavcodec.xcframework.zip",
            checksum: "758820723fb3982109b805e6395672d147f22242c33784ed60778846650443af"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/n7.0.2/Libavformat.xcframework.zip",
            checksum: "a6d4893c6a382825812757057946b71a039ecff606d1795821dc47078e05a3d8"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/n7.0.2/Libavfilter.xcframework.zip",
            checksum: "896c46875695f07c498d60b5a767b289c77c87391655bc438aec5369b63614ee"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/n7.0.2/Libavutil.xcframework.zip",
            checksum: "643c851cc9eaed5383c6eb20a857f330249d86469ff8a458f309835bdcdaa71e"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/n7.0.2/Libswresample.xcframework.zip",
            checksum: "7e9d1cb8d0f80ec878f26ac0717d2c36ec34e3453638a5a81f78863c9e0884a5"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/n7.0.2/Libswscale.xcframework.zip",
            checksum: "a4883169666d12990a5b2a7cc0d5d8fc1a62d67b9c42d307f0315d41920e3d97"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
