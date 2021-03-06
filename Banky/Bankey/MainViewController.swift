//
//  MainViewController.swift
//  Bankey
//
//  Created by Simon Peter Ojok on 18/06/2022.
//

import UIKit

class MainViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTabBar()
    }
    
    private func setupViews() {
        let summaryViewController = AccountSummaryViewController()
        let moneyViewController = MoveMoneyViewController()
        let moreViewController = MoreViewController()
        
        summaryViewController.setTabBarImage(imageName: "list.dash.header.rectangle", title: "Summary")
        moneyViewController.setTabBarImage(imageName: "arrow.left.arrow.right", title: "Move Money")
        moreViewController.setTabBarImage(imageName: "ellipsis.circle", title: "More")
        
        let summaryNavigationController = UINavigationController(rootViewController: summaryViewController)
        let moneyNavigationContrller = UINavigationController(rootViewController: moneyViewController)
        let moreNavigationController = UINavigationController(rootViewController: moreViewController)
        
        
        summaryNavigationController.navigationBar.barTintColor = appColor
        hideNavigationBarLine(summaryNavigationController.navigationBar)
        
        viewControllers = [summaryNavigationController, moneyNavigationContrller, moreNavigationController]
    }
    
    private func hideNavigationBarLine(_ navigationBar: UINavigationBar) {
        let img = UIImage()
        navigationBar.shadowImage = img
        navigationBar.setBackgroundImage(img, for: .default)
        navigationBar.isTranslucent = false
    }
    
    private func setupTabBar() {
        tabBar.tintColor = appColor
        tabBar.isTranslucent = false
    }
}

class MoveMoneyViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemOrange
    }
}

class MoreViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemPurple
    }
}
