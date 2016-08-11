//
//  GoodModel.swift
//  WeixinMemberCard
//
//  Created by WANG FEI on 16/4/20.
//  Copyright © 2016年 iAnonymous. All rights reserved.
//

import UIKit
import ObjectMapper
class GoodModel: Mappable {
    var name:String!//商品名称
    
    var orderCount:NSNumber!
    
    var price:NSNumber!
    
    
    /// 商品图片url
    var image:String!
    ///商品价格单位
    var unit:String!
    /// 商品标签数组
    var tags = [String]()
    /// 商品排序
    var order:NSNumber!
    /// 商品ID
    var id:NSNumber!
    /// 商品ID
    var item_id:NSNumber!
    /// 商品描述
    var  desc :String!
    
    
    ///////////////////////最近N天的销量模型的参数///////////////////////////
    
     /// 销量
    var count:NSNumber!
     /// 总销售额
    var total : NSNumber!
     /// 销售日期
    var date : String!
    
    var description : String!
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        name    <- map["name"]
        orderCount         <- map["orderCount"]
        price      <- map["price"]
        image       <- map["image"]
        unit  <- map["unit"]
        tags  <- map["tags"]
        order     <- map["order"]
        id    <- map["id"]
        item_id <- map["item_id"]
        desc <- map["desc"]
        
        count    <- map["count"]
        total <- map["total"]
        date <- map["date"]
        description <- map["description"]
    }
    
}
