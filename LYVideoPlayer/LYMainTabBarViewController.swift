//
//  LYMainTabBarViewController.swift
//  LYVideoPlayer
//
//  Created by 刘洋 on 2020/2/13.
//  Copyright © 2020 佳缘. All rights reserved.
//

import UIKit

class LYMainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let titles = ["邂逅","碰面","消息","广场","我的"]
        let normalImages = ["icon_main_tab_meet_normal","icon_main_tab_live_normal","icon_main_tab_message_normal","icon_main_tab_discovery_normal","icon_main_tab_my_normal"]
        let selectedImages = ["icon_main_tab_meet_highlight","icon_main_tab_live_highlight","icon_main_tab_message_highlight","icon_main_tab_discovery_highlight","icon_main_tab_my_highlight"]
        
        var controllers = Array<UIViewController>()
        for index in 0..<5 {
            let TabVC = ViewController()
            TabVC.tabBarItem = UITabBarItem(title: titles[index], image:UIImage(named: normalImages[index]), selectedImage: UIImage(named: selectedImages[index]))
            controllers.append(TabVC)
        }
        viewControllers = controllers
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
