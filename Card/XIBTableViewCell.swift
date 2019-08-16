//
//  File.swift
//  Card
//
//  Created by VERTEX21 on 2019/08/16.
//  Copyright © 2019 原田悠嗣. All rights reserved.
//

import UIKit


class XIBTableViewCell: UITableViewCell {
    
    //画像表示用
    @IBOutlet weak var xibImaga: UIImageView!
    //名前表示
    @IBOutlet weak var nameLabel: UILabel!
    //職業表示
    @IBOutlet weak var jobLabel: UILabel!
    //出身地表示
    @IBOutlet weak var fromLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    

    
}
