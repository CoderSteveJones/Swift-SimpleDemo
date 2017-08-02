//
//  GoodsCell.swift
//  Swift_SimpleDemo
//
//  Created by 江奔 on 2017/8/1.
//  Copyright © 2017年 TCGroup. All rights reserved.
//

import UIKit
import Kingfisher

class GoodsCell: UITableViewCell {

    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var goods: Goods? {
        didSet {
            nameLabel.text = goods?.name
            let imgUrl = "http://139.196.36.167:8888/ly/" + (goods?.imageUrl)!
            imgView.kf.setImage(with: URL(string: imgUrl))
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
