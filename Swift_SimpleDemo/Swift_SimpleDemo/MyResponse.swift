//
//  MyResponse.swift
//  Swift_SimpleDemo
//
//  Created by 江奔 on 2018/3/8.
//  Copyright © 2018年 TCGroup. All rights reserved.
//

import UIKit
import ObjectMapper
class MyResponse: Mappable {
    
    var args : NSDictionary?
    var headers : ResponseHeader?
    var origin : String?
    var url : String?
    
    required init?(map: Map) {
        
    }
    
    //映射字典中的所有键值
    func mapping(map: Map) {
        args <- map["args"]
        headers <- map["headers"]
        origin <- map["origin"]
        url <- map["url"]
    }

}
