//
//  ViewController.swift
//  Swift_SimpleDemo
//
//  Created by 江奔 on 2017/8/1.
//  Copyright © 2017年 TCGroup. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webRequst()
        
    }
    
    func webRequst()  {
        
        let url = "https://httpbin.org/get"
        //注意返回的类型为<Mappable对象,NSError>
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<MyResponse>) in
            
            if let myResponse = response.result.value{
                print(myResponse.url!)
                if let header = myResponse.headers{
                    print(header.userAgent!)
                }
            }
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

