//
//  ResponseHeader.swift
//  Swift_SimpleDemo
//
//  Created by 江奔 on 2018/3/8.
//  Copyright © 2018年 TCGroup. All rights reserved.
//

import UIKit
import ObjectMapper


class ResponseHeader: Mappable {
    
    var accept : String?
    var acceptEncoding : String?
    var acceptLanguage : String?
    var cacheControl : String?
    var host : String?
    var userAgent : String?
    
    required init?(map: Map) {
        
    }
    
    //映射heades字典中的所有键值
    func mapping(map: Map) {
        accept <- map["Accept"]
        acceptEncoding <- map["Accept-Encoding"]
        acceptLanguage <- map["Accept-Language"]
        cacheControl <- map["Cache-Control"]
        host <- map["Host"]
        userAgent <- map["User-Agent"]
    }
    

}
