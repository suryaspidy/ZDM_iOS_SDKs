//
//  SSOHandler.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 13/12/22.
//

import Foundation
import SSOKit

class SSOHandler {
    static var shared = SSOHandler()
    
    func connectSSO(imgData: @escaping ((Data)->())) {
        if ZSSOKit.isUserSignedIn() {
            imgData(ZSSOKit.getCurrentUser().profile.profileImageData)
        } else {
            ZSSOKit.clearSSODetailsForFirstLaunch()
            ZSSOKit.presentInitialViewController(withCustomParams: "hide_signup=false") { token, err in
                if err == nil {
                    imgData(ZSSOKit.getCurrentUser().profile.profileImageData)
                }
            }
        }
    }
}
