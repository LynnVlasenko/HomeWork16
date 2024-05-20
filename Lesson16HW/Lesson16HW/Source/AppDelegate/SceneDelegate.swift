//
//  SceneDelegate.swift
//  Lesson16HW
//
//  Created by Алина Власенко on 15.04.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        let initialVc = OnboardingViewController()
        let navigationController = UINavigationController(rootViewController: initialVc)
        navigationController.isNavigationBarHidden = true
            
        window.rootViewController = navigationController
    
        self.window = window
        
        window.makeKeyAndVisible()
    }

}

