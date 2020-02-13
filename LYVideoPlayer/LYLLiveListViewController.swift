//
//  LYLLiveListViewController.swift
//  LYVideoPlayer
//
//  Created by 刘洋 on 2020/2/13.
//  Copyright © 2020 佳缘. All rights reserved.
//

import UIKit

class LYLLiveListViewController: LYBaseListViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = ["1","2","3"];
    }

}

extension LYLLiveListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = dataSource[indexPath.row] as? String
        return cell!;
        
    }
}
