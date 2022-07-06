//
//  AppDelegate.swift
//  TabBarControllerDemo
//
//  Created by Dalton Turner on 7/6/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        let vc1 = SearchViewController()
        let vc2 = ViewController()
        let vc3 = ViewController()
        
        vc1.tabBarItem  = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vc2.tabBarItem  = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        vc3.tabBarItem  = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        
        let nc1 = UINavigationController(rootViewController: vc1)
        let nc2 = UINavigationController(rootViewController: vc2)
        let nc3 = UINavigationController(rootViewController: vc3)

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [nc1, nc2, nc3]
        window?.rootViewController = tabBarController

        return true
    }
}

