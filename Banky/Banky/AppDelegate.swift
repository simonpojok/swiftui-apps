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
    let loginViewController = LoginViewController()
    let onboardingContainerViewController = OnboardingContainerViewController()
    let dummyViewController = DummyViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        loginViewController.delegate = self
        onboardingContainerViewController.deleigate = self
        dummyViewController.logoutDelegate = self
        window?.rootViewController = loginViewController
        return true
    }

}


extension AppDelegate: LoginViewControllerDelegate, OnboardingContainerViewControllerDeligate {
    func didFinishOnboarding(_ sender: OnboardingContainerViewController) {
        print("Did Finish Onboarding")
    }
    
    func didLogin(_ sender: LoginViewController) {
        setRootViewController(onboardingContainerViewController)
    }
}

extension AppDelegate {
    func setRootViewController(_ vc: UIViewController, animated: Bool = true){
        guard animated, let window = self.window else {
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }
        
        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(
            with: window,
            duration: 0.3,
            options: .transitionCrossDissolve,
            animations: nil,
            completion: nil
        )
    }
}

extension AppDelegate: LogoutDelegate {
    func didLogout() {
        setRootViewController(dummyViewController)
    }
}
