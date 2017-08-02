//
//  Goods.swift
//  Swift_SimpleDemo
//
//  Created by 江奔 on 2017/8/1.
//  Copyright © 2017年 TCGroup. All rights reserved.
//

import UIKit
import ObjectMapper

class Goods: Mappable{
    
    var imageUrl: String?
    var name: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        imageUrl <- map["imageUrl"]
        name <- map["name"]
    }
    
}
