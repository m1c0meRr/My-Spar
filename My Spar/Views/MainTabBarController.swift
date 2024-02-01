//
//  MainTabBarController.swift
//  Test Menu
//
//  Created by Sergey Savinkov on 30.01.2024.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    private lazy var listBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage(systemName: "list.bullet.rectangle.portrait"),
                               style: .plain,
                               target: self,
                               action: .none)
    }()
    
    private lazy var sendBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"),
                               style: .plain,
                               target: self,
                               action: .none)
    }()
    
    private lazy var likeBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage(systemName: "heart"),
                               style: .plain,
                               target: self,
                               action: .none)
    }()
    
    private lazy var backBarButtonItem: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage(systemName: "arrow.left"),
                               style: .done,
                               target: self,
                               action: .none)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        setupItems()
    }
    
    private func setupTabBar() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .systemGreen
        tabBar.unselectedItemTintColor = .black
        tabBar.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupItems() {
        
        backBarButtonItem.tintColor = .systemGreen
        likeBarButtonItem.tintColor = .systemGreen
        sendBarButtonItem.tintColor = .systemGreen
        listBarButtonItem.tintColor = .systemGreen
        
        let mainVC = ViewController()
        let catalogVC = ViewController()
        let basketVC = ViewController()
        let profileVC = ViewController()
        
        navigationItem.rightBarButtonItems = [likeBarButtonItem, sendBarButtonItem, listBarButtonItem]
        navigationItem.leftBarButtonItem = backBarButtonItem
        
        setViewControllers([mainVC, catalogVC, basketVC, profileVC],
                           animated: true)
        
        guard let items = tabBar.items else { return }
        
        items[0].image = UIImage(systemName: "tree.circle")
        items[0].title = "Главная"
        
        items[1].image = UIImage(systemName: "square.grid.2x2")
        items[1].title = "Каталог"
        
        items[2].image = UIImage(systemName: "cart")
        items[2].title = "Корзина"
        
        items[3].image = UIImage(systemName: "person")
        items[3].title = "Профиль"
    }
}
