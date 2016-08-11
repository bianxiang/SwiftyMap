//
//  Addr.swift
//  WeixinMemberCard
//
//  Created by xiaoxiao on 16/8/10.
//  Copyright © 2016年 iAnonymous. All rights reserved.
//

import UIKit
import ObjectMapper
class Addr: Mappable {
    var address : String = ""
    var mobile : String = ""
    var name: String = ""
    required init?(_ map: Map) {
        
    }
    func mapping(map: Map) {
        address    <- map["address"]
        mobile         <- map["mobile"]
        name      <- map["name"]
        
    }
    
    
}
//{"code":0,"data":{"addr":{"address":"吉林省白城市洮南市坚决打击","mobile":"18602132382","name":"石头"},"buyer_user_id":0,"date_created":"2016-08-08 12:42:38","is_member":true,"items":[{"count":1,"description":null,"image":"http:\/\/image.c8ka.com\/img\/1\/131098493699183159.png","item_id":30,"name":"水杯","price":1.5,"staff_id":0,"staff_name":"","status":0,"unit":"块"}],"mark":"","mp_id":"wxce0da3465c990507","open_id":"olSR4wFiXE86lnxxVAyEpLjVJYjU","order_id":"131151049583918275","pay_type":8,"receipt_amount":1.5,"source":"wx","staff_id":0,"staff_name":null,"status":0,"total_amount":1.5},"id":1,"msg":"成功"}