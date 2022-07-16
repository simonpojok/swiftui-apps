//
//  AppDelegate.swift
//  Good News
//
//  Created by Simon Peter Ojok on 16/07/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        UINavigationBar.appearance().barTintColor = UIColor(
//            displayP3Red: 47/255,
//            green: 54/255,
//            blue: 64/255,
//            alpha: 0.1
//        )
//
//        UINavigationBar.appearance().backgroundColor = UIColor(
//            displayP3Red: 47/255,
//            green: 54/255,
//            blue: 64/255,
//            alpha: 0.1
//        )
//
//        UINavigationBar.appearance().tintColor = UIColor(
//            displayP3Red: 47/255,
//            green: 54/255,
//            blue: 64/255,
//            alpha: 0.1
//        )
//
//        UINavigationBar.appearance().
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

