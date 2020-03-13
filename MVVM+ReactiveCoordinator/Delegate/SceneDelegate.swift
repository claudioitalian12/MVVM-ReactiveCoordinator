//
//  SceneDelegate.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 05/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    private let appCoordinator = AppCoordinator()
    
    func scene(_ scene: UIScene,
               willConnectTo _: UISceneSession,
               options _: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        appCoordinator.start()
        window?.rootViewController = appCoordinator.navigationController
    }
    
}

