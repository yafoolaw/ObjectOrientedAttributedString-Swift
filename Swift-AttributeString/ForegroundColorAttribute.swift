//
//  ForegroundColorAttribute.swift
//  Swift-AttributeString
//
//  Created by 刘延峰 on 15/10/9.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

import UIKit

class ForegroundColorAttribute: StringAttribute {

    var m_color : UIColor!
    
    // MARK:重写父类方法
    override func attributeName() -> NSString {
        
        return NSForegroundColorAttributeName
    }
    
    override func attributeValue() -> AnyObject {
        
        if let _ = m_color {
        
            return m_color
        } else {
        
            return UIColor.blackColor()
        }
    }
}
