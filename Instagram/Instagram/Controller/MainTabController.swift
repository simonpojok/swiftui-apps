//
//  MainTabController.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 09/07/2022.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white
        
        let layout = UICollectionViewFlowLayout()
        let feed = templateNavigationController(
            unselectedImage: UIImage(named: "home_unselected"),
            selectedImage: UIImage(named: "home_selected"),
            rootViewController: FeedController(
            collectionViewLayout: layout
            )
        )
        
        let search = templateNavigationController(
            unselectedImage: UIImage(named: "search_unselected"),
            selectedImage: UIImage(named: "search_selected"),
            rootViewController: SearchController()
        )
        
        let imageSelector = templateNavigationController(
            unselectedImage: UIImage(named: "plus_unselected"),
            selectedImage: UIImage(named: "plus_selected"),
            rootViewController: ImageSelectorController()
        )
        
        let notifications = templateNavigationController(
            unselectedImage: UIImage(named: "like_unselected"),
            selectedImage: UIImage(named: "like_selected"),
            rootViewController: NotificationController()
        )
        
        let profile = templateNavigationController(
            unselectedImage: UIImage(named: "profile_unselected"),
            selectedImage: UIImage(named: "profile_selected"),
            rootViewController: ProfileController()
        )
        
        tabBar.tintColor = .label
        setViewControllers([feed, search, imageSelector, notifications, profile], animated: true)
    }
    
    
    func templateNavigationController(
        unselectedImage: UIImage?,
        selectedImage: UIImage?,
        rootViewController: UIViewController
    ) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
}
