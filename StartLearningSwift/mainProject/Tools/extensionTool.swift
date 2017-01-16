//
//  extensionTool.swift
//  StartLearningSwift
//
//  Created by gyjrong on 17/1/11.
//  Copyright © 2017年 mythkiven. All rights reserved.
//

import Foundation
import UIKit


// 拓展
extension UIColor {
    class func colorWith(_ red: Int, green: Int, blue: Int, alpha: CGFloat) -> UIColor {
        let color = UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
        return color
    }
    
}
