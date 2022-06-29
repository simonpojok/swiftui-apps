//
//  ViewController.swift
//  Netflix
//
//  Created by Simon Peter Ojok on 26/06/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()        
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        let upcomingViewController = UINavigationController(rootViewController: UpcomingViewController())
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        let downloadsViewController = UINavigationController(rootViewController: DownloadsViewController())
        
        
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        upcomingViewController.tabBarItem = UITabBarItem(title: "Upcoming Soon", image: UIImage(systemName: "play.circle"), tag: 2)
        searchViewController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 3)
        downloadsViewController.tabBarItem = UITabBarItem(title: "Downloads", image: UIImage(systemName: "arrow.down.to.line"), tag: 4)
        
        tabBar.tintColor = .label
        
        setViewControllers([
            homeViewController,
            upcomingViewController,
            searchViewController,
            downloadsViewController
        ], animated: true)
    }


}

