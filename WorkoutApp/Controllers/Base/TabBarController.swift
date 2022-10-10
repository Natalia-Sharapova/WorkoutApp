//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Наталья Шарапова on 09.10.2022.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
     configure()
      
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
       // tabBar.barTintColor = Resources.Colors.inactive
       // tabBar.backgroundColor = .black
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewViewController()
        let sessionController = SessionViewController()
        let progressController = ProgressViewController()
        let settingsController = SettingsViewController()
        
        let overviewNavigationController = NavBarController(rootViewController: overviewController)
        let sessionNavigationController = NavBarController(rootViewController: sessionController)
        let progressNavigationController = NavBarController(rootViewController: progressController)
        let settingsNavigationController = NavBarController(rootViewController: settingsController)
        
        overviewNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.overview,
                                                     tag: Tabs.overview.rawValue)
        
        sessionNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                     image: Resources.Images.session,
                                                     tag: Tabs.session.rawValue)
        
        progressNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.progress,
                                                     tag: Tabs.progress.rawValue)
        
        settingsNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overviewNavigationController,
            sessionNavigationController,
            progressNavigationController,
            settingsNavigationController
        ], animated: false)
        
    }
}
