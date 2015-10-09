//
//  StringAttribute.swift
//  Swift-AttributeString
//
//  Created by 刘延峰 on 15/10/9.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

import UIKit

class StringAttribute: NSObject, AttributeStringProtocol {
    
    // 富文本的生效范围
    var m_effectRange : NSRange! = NSMakeRange(0, 0)
    
    // MARK: AttributeStringProtocol
    func attributeName() -> NSString {
        
        fatalError("It have to be overwritten by subclass !")
    }
    
    func attributeValue() -> AnyObject {
        
        fatalError("It have to be overwritten by subclass !")
    }
    
    func effectiveRange() -> NSRange {
        
        return m_effectRange
    }

}
