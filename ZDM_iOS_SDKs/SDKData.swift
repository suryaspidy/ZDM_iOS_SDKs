//
//  SDKData.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 14/12/22.
//

import UIKit
import SwiftUI


var finalizedSDKS = [ZMDiOSSDKDataGenerator.getSDKData(.ZPChartSDK),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZDMediaPickerSDK),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZDRichEditor),
                     ZMDiOSSDKDataGenerator.getSDKData(.GC),
                     ZMDiOSSDKDataGenerator.getSDKData(.ASAP),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZPPubSubSDK),
                     ZMDiOSSDKDataGenerator.getSDKData(.AgentCollision),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZohoDeskUIKit),
                     ZMDiOSSDKDataGenerator.getSDKData(.Platform),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZDDeskSDK),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZDDeskInHouseSDK),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZDDashBoardUI),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZDDashboard),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZDConversationCell),
                     ZMDiOSSDKDataGenerator.getSDKData(.ZDChartSDK),
                     ZMDiOSSDKDataGenerator.getSDKData(.GEOSDK),
                     ZMDiOSSDKDataGenerator.getSDKData(.MarketPlace)]
enum ZDMListedSDK: String {
    case ZPChartSDK,ZDMediaPickerSDK,ZDRichEditor,GC,ASAP,ZPPubSubSDK,AgentCollision,ZohoDeskUIKit,Platform,ZDDeskSDK,ZDDeskInHouseSDK,ZDDashBoardUI,ZDDashboard,ZDConversationCell,ZDChartSDK,GEOSDK,MarketPlace
}

struct ZDMSDKSkaleton: Hashable {
    var sdkName: String
    var sdkImgUrl: String
    var localDesc: String
    var documentationUrl: String
    var dependencySDKs:[String]
}


class ZMDiOSSDKDataGenerator {
    static func getSDKName(_ sdk: ZDMListedSDK) -> String { sdk.rawValue }
    static func getSDKDocumentationURl(_ sdk: ZDMListedSDK) -> String {
        var sdkDocumentationURL:String
        switch sdk {
        case .ZPChartSDK: sdkDocumentationURL = "https://www.google.com"
        case .ZDMediaPickerSDK: sdkDocumentationURL = "https://www.google.com"
        case .ZDRichEditor: sdkDocumentationURL = "https://www.google.com"
        case .GC: sdkDocumentationURL = "https://www.google.com"
        case .ASAP: sdkDocumentationURL = "https://www.google.com"
        case .ZPPubSubSDK: sdkDocumentationURL = "https://www.google.com"
        case .AgentCollision: sdkDocumentationURL = "https://www.google.com"
        case .ZohoDeskUIKit: sdkDocumentationURL = "https://www.google.com"
        case .Platform: sdkDocumentationURL = "https://www.google.com"
        case .ZDDeskSDK: sdkDocumentationURL = "https://www.google.com"
        case .ZDDeskInHouseSDK: sdkDocumentationURL = "https://www.google.com"
        case .ZDDashBoardUI: sdkDocumentationURL = "https://www.google.com"
        case .ZDDashboard: sdkDocumentationURL = "https://www.google.com"
        case .ZDConversationCell: sdkDocumentationURL = "https://www.google.com"
        case .ZDChartSDK: sdkDocumentationURL = "https://www.google.com"
        case .GEOSDK: sdkDocumentationURL = "https://www.google.com"
        case .MarketPlace: sdkDocumentationURL = "https://www.google.com"
        }
        return sdkDocumentationURL
    }
    static func getSDKLocalDesc(_ sdk: ZDMListedSDK) -> String {
        var sdkLocalDesc: String
        switch sdk {
        case .ZPChartSDK: sdkLocalDesc = "Demo"
        case .ZDMediaPickerSDK: sdkLocalDesc = "Demo"
        case .ZDRichEditor: sdkLocalDesc = "Demo"
        case .GC: sdkLocalDesc = "Demo"
        case .ASAP: sdkLocalDesc = "Demo"
        case .ZPPubSubSDK: sdkLocalDesc = "Demo"
        case .AgentCollision: sdkLocalDesc = "Demo"
        case .ZohoDeskUIKit: sdkLocalDesc = "Demo"
        case .Platform: sdkLocalDesc = "Demo"
        case .ZDDeskSDK: sdkLocalDesc = "Demo"
        case .ZDDeskInHouseSDK: sdkLocalDesc = "Demo"
        case .ZDDashBoardUI: sdkLocalDesc = "Demo"
        case .ZDDashboard: sdkLocalDesc = "Demo"
        case .ZDConversationCell: sdkLocalDesc = "Demo"
        case .ZDChartSDK: sdkLocalDesc = "Demo"
        case .GEOSDK: sdkLocalDesc = "Demo"
        case .MarketPlace: sdkLocalDesc = "Demo"
        }
        return sdkLocalDesc
    }
    static func getSDKIcon(_ sdk: ZDMListedSDK) -> String {
        var sdkIcon:String
        switch sdk {
        case .ZPChartSDK: sdkIcon = "c"
        case .ZDMediaPickerSDK: sdkIcon = "m"
        case .ZDRichEditor: sdkIcon = "r"
        case .GC: sdkIcon = "c"
        case .ASAP: sdkIcon = "a"
        case .ZPPubSubSDK: sdkIcon = "p"
        case .AgentCollision: sdkIcon = "a"
        case .ZohoDeskUIKit: sdkIcon = "u"
        case .Platform: sdkIcon = "p"
        case .ZDDeskSDK: sdkIcon = "d"
        case .ZDDeskInHouseSDK: sdkIcon = "d"
        case .ZDDashBoardUI: sdkIcon = "d"
        case .ZDDashboard: sdkIcon = "d"
        case .ZDConversationCell: sdkIcon = "c"
        case .ZDChartSDK: sdkIcon = "c"
        case .GEOSDK: sdkIcon = "g"
        case .MarketPlace: sdkIcon = "m"
        }
        return sdkIcon.getAssetAlphabetsImage()
    }
    static func getSDKData(_ sdk: ZDMListedSDK) -> ZDMSDKSkaleton {
        return ZDMSDKSkaleton(sdkName: getSDKName(sdk), sdkImgUrl: getSDKIcon(sdk), localDesc: getSDKLocalDesc(sdk), documentationUrl: getSDKDocumentationURl(sdk), dependencySDKs: [""])
    }
}
