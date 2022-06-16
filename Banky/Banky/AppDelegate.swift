//
//  AppDelegate.swift
//  Banky
//
//  Created by Simon Peter Ojok on 03/06/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        window?.rootViewController = OnboardingContainerViewController()
        return true
    }

}

