//
//  ViewController.swift
//  Swift中的映射
//
//  Created by xiaoxiao on 16/8/10.
//  Copyright © 2016年 bianxiang. All rights reserved.
//

import UIKit
import ObjectMapper
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let user = Mapper<User>().map(<#T##JSONDictionary: [String : AnyObject]##[String : AnyObject]#>)
//        let JSONString = Mapper().toJSONString(user, prettyPrint: true)
//        
//        var celsius: Double?
//        var fahrenheit: Double?
        var dict = ["celsius":1.01 , "fahrenheit":2.02]
        let temperature = Mapper<Temperature>().map(dict)
        print(temperature!.celsius)
        print(temperature!.fahrenheit)
        
        
        
        
        var dict1 = ["address":"吉林省白城市洮南市坚决打击",
                     "mobile":"18602132382",
                     "name":"石头"]
        
        var dict2 = ["count":1,
                     "description":"这是描述",
                     "image":"123",
                     "item_id":30,
                     "name":"水杯",
                     "price":1.5,
                     "staff_id":0,
                     "staff_name":"",
                     "status":0,
                     "unit":"块"
                    ]
        
        var jsonDict = JSON(
                ["addr":dict1,
                "buyer_user_id":0,
                "date_created":"2016-08-08 12:42:38",
                "is_member":true,
                "items":[dict2],
                "mark":"",
                "mp_id":"wxce0da3465c990507",
                "open_id":"olSR4wFiXE86lnxxVAyEpLjVJYjU",
                "order_id":"131151049583918275",
                "pay_type":8,
                "receipt_amount":1.5,
                "source":"wx",
                "staff_id":0,
                "staff_name":"",
                "status":0,
                "total_amount":1.5]
            )

        var order = Mapper<WeixinOrderInfo>().map(jsonDict.dictionaryObject)
        
        
        print("打印订单信息--------------------------------------------------")
        print(order!.addr.address)
        print(order!.addr.name)
        print(order!.addr.mobile)
        
        print(order!.items[0].name)
        print(order!.items[0].description)
        print(order!.items[0].unit)
        print(order!.items[0].price)
        print(order!.items[0].item_id)
        
        print(order!.date_created)
        print(order!.mark)
        print(order!.order_id)
        print(order!.pay_type)
        print(order!.receipt_amount)
        print(order!.source)
        print(order!.status)
        print(order!.total_amount)
        print(order!.items.count)
        
        print("打印订单信息的JSON-------------------------------------------")
        let jsonString = Mapper().toJSONString(order!)
        print(jsonString)
//        print(jsonString!)
        
        
        
        
        var jsonDictArray = JSON([
            ["addr":dict1,
                "buyer_user_id":0,
                "date_created":"2016-08-08 12:42:38",
                "is_member":true,
                "items":[dict2],
                "mark":"",
                "mp_id":"wxce0da3465c990507",
                "open_id":"olSR4wFiXE86lnxxVAyEpLjVJYjU",
                "order_id":"131151049583918275",
                "pay_type":8,
                "receipt_amount":1.5,
                "source":"wx",
                "staff_id":0,
                "staff_name":"",
                "status":0,
                "total_amount":1.5],
            ["addr":dict1,
                "buyer_user_id":0,
                "date_created":"2016-08-08 12:42:38",
                "is_member":true,
                "items":[dict2],
                "mark":"",
                "mp_id":"wxce0da3465c990507",
                "open_id":"olSR4wFiXE86lnxxVAyEpLjVJYjU",
                "order_id":"131151049583918275",
                "pay_type":8,
                "receipt_amount":1.5,
                "source":"wx",
                "staff_id":0,
                "staff_name":"",
                "status":0,
                "total_amount":1.5],
            ["addr":dict1,
                "buyer_user_id":0,
                "date_created":"2016-08-08 12:42:38",
                "is_member":true,
                "items":[dict2],
                "mark":"",
                "mp_id":"wxce0da3465c990507",
                "open_id":"olSR4wFiXE86lnxxVAyEpLjVJYjU",
                "order_id":"131151049583918275",
                "pay_type":8,
                "receipt_amount":1.5,
                "source":"wx",
                "staff_id":0,
                "staff_name":"",
                "status":0,
                "total_amount":1.5]
        ])
        
        
        
        
        var orderArray = Mapper<WeixinOrderInfo>().mapArray(jsonDictArray.arrayObject)
        print("打印订单的数组-------------------------------------------")
        print(orderArray!)
        print("打印订单的数组第0个的地址信息-------------------------------------------")
        print(orderArray![0].addr.address)
        print(orderArray![0].date_created)
        print(orderArray![0].items.count)
        print(orderArray![0].items[0].name)
        
       
        
        let orderJSONArray =  Mapper().toJSONArray(orderArray!)
        print("打印订单的JSON数组-------------------------------------------")
        print(orderJSONArray)
        
        
        let orderArrayJSONString = Mapper().toJSONString(orderArray!)
        print(orderArrayJSONString)
        
        
        
    }

   
    


}



struct Temperature: Mappable {
    var celsius: Double!
    var fahrenheit: Double!
    
    init?(_ map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        celsius     <- map["celsius"]
        fahrenheit  <- map["fahrenheit"]
    }
}




