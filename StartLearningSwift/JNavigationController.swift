//
//  JNavigationController.swift
//  StartLearningSwift
//
//  Created by 蒋孝才 on 17/1/11.
//  github地址:https://github.com/mythkiven
//  如有任何问题，还请提issues
//
//  Copyright © 2017年 mythkiven. All rights reserved.
//


import UIKit

class JNavigationController: UINavigationController {

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
