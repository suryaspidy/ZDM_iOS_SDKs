//
//  Skaletons.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 11/12/22.
//

import Foundation

struct HomeCardSkaleton: Hashable {
    var sdkName: String
    var sdkImgUrl: String
    var localDesc: String
    var documentationUrl: String
    var dependencySDKs:[String]
    var demoImageNames:[String]
}

var sdks = [ZDMSDksData.getSDKData(.ZohoPlatformDataBridge),
            ZDMSDksData.getSDKData(.ZohoPlatformUIBuilder),
            ZDMSDksData.getSDKData(.ZPChartSDK),
            ZDMSDksData.getSDKData(.Radar),
            ZDMSDksData.getSDKData(.ZPPubSubSDK),
            ZDMSDksData.getSDKData(.ZDRichEditor),
            ZDMSDksData.getSDKData(.ZDDashBoardUI),
            ZDMSDksData.getSDKData(.ZDDeskBinder),
            ZDMSDksData.getSDKData(.ZDMediaPickerSDK),
            ZDMSDksData.getSDKData(.ZDDeskSDK),
            ZDMSDksData.getSDKData(.ZDDeskInHouseSDK),
            ZDMSDksData.getSDKData(.ZPPlatformUI),
            ZDMSDksData.getSDKData(.ZDThemeKit),
            ZDMSDksData.getSDKData(.ZDPermissionHelper),
            ZDMSDksData.getSDKData(.ZohoDeskUIKit),
            ZDMSDksData.getSDKData(.ZDHelperKit),
            ZDMSDksData.getSDKData(.ZohoDeskPortalTicket),
            ZDMSDksData.getSDKData(.ZohoDeskPortalCommunity),
            ZDMSDksData.getSDKData(.ZohoDeskPortalKB),
            ZDMSDksData.getSDKData(.ZohoDeskPortalConfiguration),
            ZDMSDksData.getSDKData(.ZohoDeskPortalAPIKit)]


struct ZDMSDksData {
    
    static private func getSDKName(_ sdk: ZDMSDKs) -> String {
        var sdkName:String
        switch sdk {
        case .ZohoPlatformDataBridge: sdkName = "ZohoPlatformDataBridge"
        case .ZohoPlatformUIBuilder: sdkName = "ZohoPlatformUIBuilder"
        case .ZPChartSDK: sdkName = "ZPChartSDK"
        case .Radar: sdkName = "Radar"
        case .ZPPubSubSDK: sdkName = "ZPPubSubSDK"
        case .ZDRichEditor: sdkName = "ZDRichEditor"
        case .ZDDashBoardUI: sdkName = "ZDDashBoardUI"
        case .ZDDeskBinder: sdkName = "ZDDeskBinder"
        case .ZDMediaPickerSDK: sdkName = "ZDMediaPickerSDK"
        case .ZDDeskSDK: sdkName = "ZDDeskSDK"
        case .ZDDeskInHouseSDK: sdkName = "ZDDeskInHouseSDK"
        case .ZPPlatformUI: sdkName = "ZPPlatformUI"
        case .ZDThemeKit: sdkName = "ZDThemeKit"
        case .ZDPermissionHelper: sdkName = "ZDPermissionHelper"
        case .ZohoDeskUIKit: sdkName = "ZohoDeskUIKit"
        case .ZDHelperKit: sdkName = "ZDHelperKit"
        case .ZohoDeskPortalTicket: sdkName = "ZohoDeskPortalTicket"
        case .ZohoDeskPortalCommunity: sdkName = "ZohoDeskPortalCommunity"
        case .ZohoDeskPortalKB: sdkName = "ZohoDeskPortalKB"
        case .ZohoDeskPortalConfiguration: sdkName = "ZohoDeskPortalConfiguration"
        case .ZohoDeskPortalAPIKit: sdkName = "ZohoDeskPortalAPIKit"
        }
        return sdkName
    }
    
    static private func getSDKIcon(_ sdk: ZDMSDKs) -> String {
        var sdkIcon:String
        switch sdk {
        case .ZohoPlatformDataBridge: sdkIcon = "b"
        case .ZohoPlatformUIBuilder: sdkIcon = "u"
        case .ZPChartSDK: sdkIcon = "c"
        case .Radar: sdkIcon = "r"
        case .ZPPubSubSDK: sdkIcon = "p"
        case .ZDRichEditor: sdkIcon = "r"
        case .ZDDashBoardUI: sdkIcon = "d"
        case .ZDDeskBinder: sdkIcon = "d"
        case .ZDMediaPickerSDK: sdkIcon = "m"
        case .ZDDeskSDK: sdkIcon = "d"
        case .ZDDeskInHouseSDK: sdkIcon = "d"
        case .ZPPlatformUI: sdkIcon = "p"
        case .ZDThemeKit: sdkIcon = "t"
        case .ZDPermissionHelper: sdkIcon = "h"
        case .ZohoDeskUIKit: sdkIcon = "u"
        case .ZDHelperKit: sdkIcon = "h"
        case .ZohoDeskPortalTicket: sdkIcon = "t"
        case .ZohoDeskPortalCommunity: sdkIcon = "c"
        case .ZohoDeskPortalKB: sdkIcon = "k"
        case .ZohoDeskPortalConfiguration: sdkIcon = "c"
        case .ZohoDeskPortalAPIKit: sdkIcon = "a"
        }
        return sdkIcon.getAssetAlphabetsImage()//getSFCircleImage()
    }
    
    static private func getSDKDocumentationURl(_ sdk: ZDMSDKs) -> String {
        var sdkDocumentationURL:String
        switch sdk {
        case .ZohoPlatformDataBridge: sdkDocumentationURL = "https://www.google.com"
        case .ZohoPlatformUIBuilder: sdkDocumentationURL = "https://www.google.com"
        case .ZPChartSDK: sdkDocumentationURL = "https://www.google.com"
        case .Radar: sdkDocumentationURL = "https://www.google.com"
        case .ZPPubSubSDK: sdkDocumentationURL = "https://www.google.com"
        case .ZDRichEditor: sdkDocumentationURL = "https://www.google.com"
        case .ZDDashBoardUI: sdkDocumentationURL = "https://www.google.com"
        case .ZDDeskBinder: sdkDocumentationURL = "https://www.google.com"
        case .ZDMediaPickerSDK: sdkDocumentationURL = "https://www.google.com"
        case .ZDDeskSDK: sdkDocumentationURL = "https://www.google.com"
        case .ZDDeskInHouseSDK: sdkDocumentationURL = "https://www.google.com"
        case .ZPPlatformUI: sdkDocumentationURL = "https://www.google.com"
        case .ZDThemeKit: sdkDocumentationURL = "https://www.google.com"
        case .ZDPermissionHelper: sdkDocumentationURL = "https://www.google.com"
        case .ZohoDeskUIKit: sdkDocumentationURL = "https://www.google.com"
        case .ZDHelperKit: sdkDocumentationURL = "https://www.google.com"
        case .ZohoDeskPortalTicket: sdkDocumentationURL = "https://www.google.com"
        case .ZohoDeskPortalCommunity: sdkDocumentationURL = "https://www.google.com"
        case .ZohoDeskPortalKB: sdkDocumentationURL = "https://www.google.com"
        case .ZohoDeskPortalConfiguration: sdkDocumentationURL = "https://www.google.com"
        case .ZohoDeskPortalAPIKit: sdkDocumentationURL = "https://www.google.com"
        }
        return sdkDocumentationURL
    }
    
    static private func getSDKLocalDesc(_ sdk: ZDMSDKs) -> String {
        var sdkLocalDesc: String
        switch sdk {
        case .ZohoPlatformDataBridge: sdkLocalDesc = "SDK contains all protocols for ZohoDeskPlatformUIKit SDK, And it's used to write platform binders"
        case .ZohoPlatformUIBuilder: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZPChartSDK: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .Radar: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZPPubSubSDK: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDRichEditor: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDDashBoardUI: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDDeskBinder: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDMediaPickerSDK: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDDeskSDK: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDDeskInHouseSDK: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZPPlatformUI: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDThemeKit: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDPermissionHelper: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZohoDeskUIKit: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZDHelperKit: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZohoDeskPortalTicket: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZohoDeskPortalCommunity: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZohoDeskPortalKB: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZohoDeskPortalConfiguration: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        case .ZohoDeskPortalAPIKit: sdkLocalDesc = "hbvnwkjhbfwnvjrfbevkvwfjhbwnkrjdbvowerfshvb3rnwdhrsdvjnwirvworujbvdwoursvjdwourbjvdwourvjbdwoulrjdvwousrjlbvdwolurbsvjdowurjbsvdowujrsndvowujbrvdouwjbrvnouwjrbdnvwourjbfvouwjbrvouwjbrvouwjrbvousrvjbwourjbvnowurjvbnworuvbjworubvdjwourvbowurbvouwrbvouwrbvowrubvouwrbvoubwrovubwrovbworvbowrbvouwrouvbwourvb"
        }
        return sdkLocalDesc
    }
    
    static private func getSDKDependencies(_ sdk: ZDMSDKs) -> [String]{
        var sdkDependencies: [String]
        switch sdk {
        case .ZohoPlatformDataBridge: sdkDependencies = .defaultValue
        case .ZohoPlatformUIBuilder: sdkDependencies = [ZDMSDksData.getSDKName(.ZohoPlatformDataBridge),ZDMSDksData.getSDKName(.ZPChartSDK),ZDMSDksData.getSDKName(.ZDMediaPickerSDK),ZDMSDksData.getSDKName(.ZDRichEditor)]
        case .ZPChartSDK: sdkDependencies = .defaultValue
        case .Radar: sdkDependencies = [ZDMSDksData.getSDKName(.ZDDeskSDK),ZDMSDksData.getSDKName(.ZDDeskInHouseSDK),ZDMSDksData.getSDKName(.ZDDashBoardUI)]
        case .ZPPubSubSDK: sdkDependencies = .defaultValue
        case .ZDRichEditor: sdkDependencies = .defaultValue
        case .ZDDashBoardUI: sdkDependencies = [ZDMSDksData.getSDKName(.ZohoPlatformDataBridge),ZDMSDksData.getSDKName(.ZohoPlatformUIBuilder)]
        case .ZDDeskBinder: sdkDependencies = [ZDMSDksData.getSDKName(.ZohoPlatformDataBridge),ZDMSDksData.getSDKName(.ZohoPlatformUIBuilder)]
        case .ZDMediaPickerSDK: sdkDependencies = .defaultValue
        case .ZDDeskSDK: sdkDependencies = .defaultValue
        case .ZDDeskInHouseSDK: sdkDependencies = [ZDMSDksData.getSDKName(.ZDDeskSDK)]
        case .ZPPlatformUI: sdkDependencies = .defaultValue
        case .ZDThemeKit: sdkDependencies = .defaultValue
        case .ZDPermissionHelper: sdkDependencies = .defaultValue
        case .ZohoDeskUIKit: sdkDependencies = [ZDMSDksData.getSDKName(.ZDThemeKit)]
        case .ZDHelperKit: sdkDependencies = .defaultValue
        case .ZohoDeskPortalTicket: sdkDependencies = [ZDMSDksData.getSDKName(.ZohoPlatformUIBuilder),ZDMSDksData.getSDKName(.ZohoPlatformDataBridge),ZDMSDksData.getSDKName(.ZohoDeskPortalAPIKit),ZDMSDksData.getSDKName(.ZohoDeskPortalConfiguration)]
        case .ZohoDeskPortalCommunity: sdkDependencies = [ZDMSDksData.getSDKName(.ZohoPlatformUIBuilder),ZDMSDksData.getSDKName(.ZohoPlatformDataBridge),ZDMSDksData.getSDKName(.ZohoDeskPortalAPIKit),ZDMSDksData.getSDKName(.ZohoDeskPortalConfiguration)]
        case .ZohoDeskPortalKB: sdkDependencies = [ZDMSDksData.getSDKName(.ZohoPlatformUIBuilder),ZDMSDksData.getSDKName(.ZohoPlatformDataBridge),ZDMSDksData.getSDKName(.ZohoDeskPortalAPIKit),ZDMSDksData.getSDKName(.ZohoDeskPortalConfiguration)]
        case .ZohoDeskPortalConfiguration: sdkDependencies = .defaultValue
        case .ZohoDeskPortalAPIKit: sdkDependencies = .defaultValue
        }
        return sdkDependencies
    }
    
    static private func getSDKDemoImages(_ sdk: ZDMSDKs) -> [String] {
        var sdkDepentencyDemoImages: [String]
        switch sdk {
        case .ZohoPlatformDataBridge: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZohoPlatformUIBuilder: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZPChartSDK: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .Radar: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZPPubSubSDK: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDRichEditor: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDDashBoardUI: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDDeskBinder: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDMediaPickerSDK: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDDeskSDK: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDDeskInHouseSDK: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZPPlatformUI: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDThemeKit: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDPermissionHelper: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZohoDeskUIKit: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZDHelperKit: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZohoDeskPortalTicket: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZohoDeskPortalCommunity: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZohoDeskPortalKB: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZohoDeskPortalConfiguration: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        case .ZohoDeskPortalAPIKit: sdkDepentencyDemoImages = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
        }
        return sdkDepentencyDemoImages
    }
    
    static func getSDKData(_ sdk: ZDMSDKs) -> HomeCardSkaleton {
        return HomeCardSkaleton(sdkName: ZDMSDksData.getSDKName(sdk), sdkImgUrl: ZDMSDksData.getSDKIcon(sdk),localDesc: ZDMSDksData.getSDKLocalDesc(sdk), documentationUrl: ZDMSDksData.getSDKDocumentationURl(sdk),dependencySDKs:ZDMSDksData.getSDKDependencies(sdk), demoImageNames: ZDMSDksData.getSDKDemoImages(sdk))
    }
}

enum ZDMSDKs {
    case ZohoPlatformDataBridge,ZohoPlatformUIBuilder,ZPChartSDK,Radar,ZPPubSubSDK,ZDRichEditor,ZDDashBoardUI,ZDDeskBinder,ZDMediaPickerSDK,ZDDeskSDK,ZDDeskInHouseSDK,ZPPlatformUI,ZDThemeKit,ZDPermissionHelper,ZohoDeskUIKit,ZDHelperKit,ZohoDeskPortalTicket,ZohoDeskPortalCommunity,ZohoDeskPortalKB,ZohoDeskPortalConfiguration,ZohoDeskPortalAPIKit
}

