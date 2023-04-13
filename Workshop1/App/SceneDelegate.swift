//
//  SceneDelegate.swift
//  Workshop1
//
//  Created by omer kantar on 6/4/23.
//

import UIKit

public class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    public var window: UIWindow?

    public func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        let bundle = Bundle.main
        print(bundle.description)
        print(bundle.bundleIdentifier)
        print(bundle.infoDictionary)
        let baseUrl = bundle.infoDictionary?["ApplicationBaseURL"] as? String
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        print(#function)
//        print(window)
    }

    public func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
//        print(#function)
    }

    public func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
//        func sample1() {
//            print(#function)
//        }
//        sample1()
//        let sample2 = { (name: String) in
//            print("name \(name), function \(#function)")
//        }
//        sample2("iOS")
//        let tuple: (name: String, surname: String) = ("Akin Serhat", "Goksel")
//        print(tuple.name)
//        print(#function)
    }

    public func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
//        print(#function)
    }

    public func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
//        print(#function)

    }

    public func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
//        print(#function)
    }

}

