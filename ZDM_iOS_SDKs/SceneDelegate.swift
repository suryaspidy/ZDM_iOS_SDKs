//
//  SceneDelegate.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 10/12/22.
//

import UIKit
import SSOKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        
        let clientID = "1002.HRFGDR05FT7613490PV4984NGSDANO"
        let scopes = ["ZohoSupport.tickets.ALL","ZohoSupport.basic.READ","ZohoSupport.basic.CREATE","ZohoSupport.settings.READ","ZohoSupport.settings.ALL","ZohoSupport.contacts.READ","Desk.contacts.READ","Desk.contacts.WRITE","Desk.contacts.UPDATE","Desk.contacts.CREATE","Zohosearch.securesearch.READ","aaaserver.profile.READ","zohocontacts.userphoto.READ","ZohoSupport.feeds.ALL","ZohoSupport.basic.UPDATE","VirtualOffice.messages.CREATE","ZohoChat.Smileys.READ","ZohoChat.Chats.READ","profile.userphoto.UPDATE","ZohoChat.Chats.UPDATE","Desk.articles.READ","ZohoSupport.search.READ","Desk.search.READ","ZIAPlatform.transcript.READ","ZIAPlatform.transcript.CREATE","ZIAPlatform.transcript.DELETE","ZIAPlatform.users.READ","DRE.dreapi.all", "Desk.community.READ","Desk.zia.READ","Desk.tasks.READ", "Desk.settings.extension.READ", "Desk.settings.extension.ALL", "Desk.extensions.CREATE","Desk.extensions.DELETE","ZohoCliq.Webhooks.CREATE","ZohoPayments.MobileSubscription.READ","ZohoPayments.MobileSubscription.CREATE","ZohoPayments.MobileSubscription.UPDATE","Desk.activities.READ", "Desk.activities.UPDATE", "Desk.activities.CREATE", "Desk.activities.DELETE"]
        let urlScheme = "deskradar"
        
        ZSSOKit.initWithClientID(clientID, scope: scopes, urlScheme: urlScheme, mainWindow: window, buildType: .Live_SSO)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }

    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        ZSSOKit.handle(URLContexts.first?.url, sourceApplication: URLContexts.first?.options.sourceApplication, annotation: URLContexts.first?.options.annotation)
    }

}

