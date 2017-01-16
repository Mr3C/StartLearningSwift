//
//  theme.swift
//  StartLearningSwift
//
//  Created by 蒋孝才 on 17/1/11.
//
//  github地址:https://github.com/mythkiven
//  如有任何问题，还请提issues
//  Copyright © 2017年 mythkiven. All rights reserved.
//

import Foundation
import UIKit

public let NavBarHeight: CGFloat = 64
public let ScreenWidth:         CGFloat = UIScreen.main.bounds.size.width
public let ScreenHeight:        CGFloat = UIScreen.main.bounds.size.height
public let ScreenBounds:        CGRect  = UIScreen.main.bounds

struct theme {
    
    // 导航条字体大小
    static let NavBarItemFont: UIFont  = UIFont.systemFont(ofSize: 16)
    // 导航条title字体大小
    static let NavBarTitleFont: UIFont = UIFont.systemFont(ofSize: 18)
    // tabbar字体大小
    static let TabBarItemFont: UIFont  = UIFont.systemFont(ofSize: 16)
    
    // 导航条字体颜色
    static let NavBarTitleColor: UIColor = UIColor.red
    // tabbar主题颜色 绿色
    static let TabBarBGColor: UIColor    = UIColor.colorWith(61, green: 174, blue: 85, alpha: 1)
    
    // 默认controller背景色 白色
    static let ViewControllerBGColor: UIColor = UIColor.colorWith(245, green: 245, blue: 245, alpha: 1)
    // 默认绿色
    static let defaultGreenColor: UIColor     = UIColor.colorWith(61, green: 174, blue: 85, alpha: 1)
    
    
}






