//
//  AppExtensions.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 11/12/22.
//

import Foundation

extension String {
    func getSFCircleImage() -> String {
        "\(self).circle"
    }
    func getAssetAlphabetsImage() -> String {
        "icon-\(self)"
    }
    func getDependencySDKObject() -> HomeCardSkaleton {
        var obj = HomeCardSkaleton(sdkName: "", sdkImgUrl: "", localDesc: "", documentationUrl: "", dependencySDKs: [], demoImageNames: [])
        sdks.forEach { sdk in
            if sdk.sdkName == self {
                obj = sdk
            }
        }
        return obj
    }
    
}

extension Optional where Wrapped == String {
    func strongString() -> String {
        guard let str = self else {
            return ""
        }
        return str
    }
}

extension Array {
    static var defaultValue: Array<Element> {
        return []
    }
}
