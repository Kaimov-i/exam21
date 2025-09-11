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
        var cats = catsManager.getCats()
        
        cats.sort(by: <)
        printCats(cats: cats)
        catsDataManager.getCats(cats: cats)
        
        window.rootViewController = ViewController(catsDataManager: catsDataManager)
        self.window = window
    }
    
    private func printCats(cats: [Cat]) {
        cats.forEach { cat in
            print(cat.description)
        }
    }
}
