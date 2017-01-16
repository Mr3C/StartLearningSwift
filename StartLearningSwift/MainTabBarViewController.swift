//
//  MainTabBarViewController.swift
//  StartLearningSwift
//
//  Created by 蒋孝才 on 17/1/11.
//  github地址:https://github.com/mythkiven
//  如有任何问题，还请提issues
//
//  Copyright © 2017年 mythkiven. All rights reserved.
//


import UIKit

class MainTabBarViewController: UITabBarController {
    
    fileprivate var centerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatSubViewControllers()
        configTabBar()
        
    }
    
    // MARK: - private
    
    /*
     private值当前文件类可以访问：不限于当前类或结构体；
     fileprivate指仅能在类或者结构体体内进行访问；
     权限则依次为：open，public，internal，fileprivate，private。
     */
    
    fileprivate func creatSubViewControllers() {
        
        tabBarAddSubViewController(vc: JHomeViewController(), title: "Home", image: "tabbar-home-normal", selectedImage: "tabbar-home-selected")
        tabBarAddSubViewController(vc: ViewController(), title: "Home", image: "tabbar-home-normal", selectedImage: "tabbar-home-selected")
        tabBarAddSubViewController(vc: JMineViewController(), title: "Mine", image: "tabbar-me-normal", selectedImage: "tabbar-me-selected")
        
    }
    
    fileprivate func tabBarAddSubViewController(vc: UIViewController, title: String, image: String, selectedImage: String) {
        
        vc.tabBarItem = UITabBarItem(title: title,
                                     image: UIImage(named: image)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal),
                                     selectedImage: UIImage(named: selectedImage)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal))
        vc.view.backgroundColor = theme.ViewControllerBGColor
        vc.tabBarItem!.setTitleTextAttributes([NSForegroundColorAttributeName: theme.TabBarBGColor], for: .selected)
        if vc.isKind(of: ViewController.self) {
            vc.tabBarItem.isEnabled = false
        }
        
        let nav = JNavigationController(rootViewController: vc)
        addChildViewController(nav)
        
    }
    
    fileprivate func configTabBar() {
        
        addCenterButton()
    }
    
    // 添加中间add按钮，注意：禁止了ViewController的tabBarItem，故此button获取事件。
    fileprivate func addCenterButton () {
        
        centerButton = UIButton(type: .custom)
        
        let originRect = self.view.convert(self.tabBar.center, to: self.tabBar)
        let buttonSize = CGSize(width:  self.tabBar.frame.size.height - 4,
                                height: self.tabBar.frame.size.height - 4)
        centerButton.frame = CGRect(x: originRect.x - buttonSize.height/2,
                                    y: originRect.y - buttonSize.height/2,
                                    width:  buttonSize.height,
                                    height: buttonSize.height)
        centerButton.setImage(UIImage(named: "tabbar-add"), for: UIControlState())
        centerButton.layer.cornerRadius = buttonSize.height/2
        centerButton.backgroundColor = theme.TabBarBGColor
        centerButton.addTarget(self, action: #selector(newItems), for: .touchUpInside)
        
        self.tabBar.addSubview(centerButton)
        
    }
    
    func newItems() {
        print("newItems")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}
