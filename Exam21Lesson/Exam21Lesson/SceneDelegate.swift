//
//  SceneDelegate.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.makeKeyAndVisible()
        
        let catsManager = CatsManager()
        let catsDataManager = CatsDataManager() 
        
        catsDataManager.getCats(cats: catsManager.getCats())
        let viewController = ViewController(catsDataManager: catsDataManager)
      
        
        window.rootViewController = viewController
        self.window = window
    }


}

