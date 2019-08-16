//
//  LikedListTableViewController.swift
//  Card
//
//  Created by 原田悠嗣 on 2019/08/10.
//  Copyright © 2019 原田悠嗣. All rights reserved.
//

import UIKit

class LikedListTableViewController: UITableViewController {

    // いいね」された名前の一覧
    var likedName: [String] = []
    var likedjob : [String] = []
    var likedFrom : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "XIBTableViewCell",bundle: nil), forCellReuseIdentifier: "XIBCell")
    }

    // MARK: - Table view data source

    // 必須:セルの数を返すメソッド
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // いいねされたユーザーの数
        return likedName.count
    }
    
    // セルの高さを75に変更
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    // 必須:セルの設定
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "XIBCell", for: indexPath) as! XIBTableViewCell
        // セルのラベルに表示
        cell.nameLabel.text = likedName[indexPath.row]
        cell.jobLabel.text = likedjob[indexPath.row]
        cell.fromLabel.text = likedFrom[indexPath.row]
        cell.xibImaga.image = UIImage(named: likedName[indexPath.row])
        return cell
    }
}
