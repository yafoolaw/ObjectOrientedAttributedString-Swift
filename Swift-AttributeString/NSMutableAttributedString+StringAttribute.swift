//
//  NSMutableAttributedString+StringAttribute.swift
//  Swift-AttributeString
//
//  Created by FrankLiu on 15/10/9.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

import Foundation

extension NSMutableAttributedString {

    /**
    添加富文本对象
    
    - parameter stringAttribute: 实现了AttributeStringProtocol协议的对象
    */
    func addStringAttribute(stringAttribute : AttributeStringProtocol) {
    
        self.addAttribute(stringAttribute.attributeName() as String,
            value: stringAttribute.attributeValue(),
            range: stringAttribute.effectiveRange!())
        
    }
    
    /**
    删除指定的富文本对象
    
    - parameter stringAttribute: 实现了AttributeStringProtocol协议的对象
    */
    func removeStringAttribute(stringAttribute : AttributeStringProtocol) {
    
        self.removeAttribute(stringAttribute.attributeName() as String,
            range: stringAttribute.effectiveRange!())
    }
}