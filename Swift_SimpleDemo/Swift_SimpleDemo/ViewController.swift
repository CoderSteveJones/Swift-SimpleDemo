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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate lazy var goodses = [Goods]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.tableFooterView = UIView()
        loadData()
    }
    fileprivate func loadData() {
        
        let url = "http://139.196.36.167:8084/h5Server/v1/Shop/getMerchants"
        let par = [ "merchantProperty" : "1",
                    "page" : "1",
                    "rows" : "10"]
        
        Alamofire.request(url, method: .post, parameters: par, encoding: JSONEncoding.default, headers: nil).responseArray(keyPath: "obj.list") { (response: DataResponse<[Goods]>) in
            
            if let values = response.result.value{
                self.goodses = values
                self.tableView.reloadData()
                for goods in values {
                    print(goods.name!)
                }
            }
            
            
        }
    }
    
    // MARK: - UITableViewDelegate UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goodses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! GoodsCell
        cell.goods = goodses[indexPath.row]
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

