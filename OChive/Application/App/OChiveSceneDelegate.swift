//
//  OChiveSceneDelegate.swift
//  OChive
//
//  Created by pkmk on 2022/11/08.
//

import Foundation
import UIKit

final class OChiveSceneDelegate: NSObject, ObservableObject {
    // TODO: TEST Code, remove
    @Published var sceneStatus: String = ""
}

// MARK: - SceneDelegate
extension OChiveSceneDelegate: UIWindowSceneDelegate {
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        sceneStatus = "sceneDidDisconnect"
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        sceneStatus = "sceneDidBecomeActive"
    }

    func sceneWillResignActive(_ scene: UIScene) {
        sceneStatus = "sceneWillResignActive"
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        sceneStatus = "sceneWillEnterForeground"
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        sceneStatus = "sceneDidEnterBackground"
    }
}
