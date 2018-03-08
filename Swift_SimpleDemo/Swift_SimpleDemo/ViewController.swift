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
        // 1.
//        webRequst()

        // 2.
        loadData()
        
    
        
    }
    
    func loadData() {
        let par = ["action" : "getUserDeviceList",
                   "userId" : "36ca73b18fa64e0cb93a02fbf2a29a65",
                   "page" : "1",
                   "pageSzie" : "5",
                   ]
        
        let url = "http://192.168.2.162:6060/User?action=getUserDeviceList"
        
//        Alamofire.request(url, method: .post, parameters: par, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
//            let result = response.result.value as! [String : Any]
//            print(result)
//        }
        
        Alamofire.request(url, method: .post, parameters: par, encoding: JSONEncoding.default, headers: nil).responseString { (response) in
            let result = response.result.value!
            print(result)
        }
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

