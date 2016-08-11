//
//  WeixinOrderInfo.swift
//  WeixinMemberCard
//
//  Created by xiaoxiao on 16/8/10.
//  Copyright © 2016年 iAnonymous. All rights reserved.
//

import UIKit
import ObjectMapper
class WeixinOrderInfo: Mappable {
    
    var addr : Addr!
//    var buyer_user_id = 0
    
    var date_created = ""
    
//    var is_member : Bool!
    var items : [GoodModel]! 
    
    var mark = ""
    
//    var mp_id = ""
    
//    var open_id = ""
    
    var order_id = ""
    
    
    var pay_type = 0
    
    var receipt_amount = 0
    
    var source = ""
    
//    var staff_id : Int!
    
//    var staff_name :String?
    
    var status = -100
    
    var total_amount = 0

    required init?(_ map: Map) {

    }
    func mapping(map: Map) {
        addr    <- map["addr"]
        date_created         <- map["date_created"]
        mark      <- map["mark"]
        order_id       <- map["order_id"]
        pay_type  <- map["pay_type"]
        receipt_amount  <- map["receipt_amount"]
        source     <- map["source"]
        status    <- map["status"]
        total_amount <- map["total_amount"]
        items <- map["items"]
    }

    

}
//{"code":0,"data":{"addr":{"address":"吉林省白城市洮南市坚决打击","mobile":"18602132382","name":"石头"},"buyer_user_id":0,"date_created":"2016-08-08 12:42:38","is_member":true,"items":[{"count":1,"description":null,"image":"http:\/\/image.c8ka.com\/img\/1\/131098493699183159.png","item_id":30,"name":"水杯","price":1.5,"staff_id":0,"staff_name":"","status":0,"unit":"块"}],"mark":"","mp_id":"wxce0da3465c990507","open_id":"olSR4wFiXE86lnxxVAyEpLjVJYjU","order_id":"131151049583918275","pay_type":8,"receipt_amount":1.5,"source":"wx","staff_id":0,"staff_name":null,"status":0,"total_amount":1.5},"id":1,"msg":"成功"}