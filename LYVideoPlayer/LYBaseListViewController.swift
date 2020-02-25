//
//  LYBaseListViewController.swift
//  LYVideoPlayer
//
//  Created by 刘洋 on 2020/2/13.
//  Copyright © 2020 佳缘. All rights reserved.
//

import UIKit

class LYBaseListViewController: LYBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(createListView())
    }
    var isTableView = true
    var tableView = UITableView()
//    var collectionView =
    var dataSource = Array<Any>()
    /*
     测试revert
     */
    /*
     二次提交测试
     */
    
    func createListView() -> UIScrollView {
        if isTableView {
            return createtableView()
        }else{
            return createCollectionView()
        }
    }
    
    func createtableView() -> UITableView {
        tableView = UITableView(frame: self.view.frame);
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }
    
    func createCollectionView() -> UICollectionView {
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: UICollectionViewLayout())
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
        
        
    }

}

extension LYBaseListViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

extension LYBaseListViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell();
    }
    
    
}
