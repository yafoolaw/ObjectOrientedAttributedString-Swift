//
//  AttributeStringProtocol.swift
//  Swift-AttributeString
//
//  Created by 刘延峰 on 15/10/9.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

import Foundation

@objc protocol AttributeStringProtocol {

    /**
    富文本属性名称
    
    - returns: 属性名称
    */
    func attributeName() -> NSString
    
    /**
    属性对应的值
    
    - returns: 对应的值
    */
    func attributeValue() -> AnyObject
    
    /**
    属性设置生效范围
    
    - returns: 生效范围
    */
    optional func effectiveRange() -> NSRange
}