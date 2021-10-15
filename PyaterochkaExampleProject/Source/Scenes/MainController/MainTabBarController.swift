//
//  MainTabBarController.swift
//  PyaterochkaExampleProject
//
//  Created by Danil Goncharov on 15.10.2021.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
        setupTabBarControllers()
        }
    
    // MARK: - Configuration
   
    private func setupTabBarControllers() {
        
        let items = [
            UITabBarItem(title: "Главная", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill")),
            UITabBarItem(title: "Каталог", image: UIImage(systemName: "circle.grid.2x2"), selectedImage: UIImage(systemName: "circle.grid.2x2.fill")),
            UITabBarItem(title: "Корзина", image: UIImage(systemName: "cart"), selectedImage: UIImage(systemName: "cart.fill")),
            UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        ]
        
        let ViewControllers = [
            ViewController(), ViewController(),
            ViewController(), ViewController()
        ]
        
        let customViewControllers = zip(items, ViewControllers)
            .compactMap { item, ViewController -> UIViewController in
                ViewController.tabBarItem = item
                return ViewController
            }
        
        setViewControllers(customViewControllers, animated: true)
    }
    
    
}

