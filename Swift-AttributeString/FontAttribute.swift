//
//  FontAttribute.swift
//  Swift-AttributeString
//
//  Created by FrankLiu on 15/10/9.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

import UIKit

class FontAttribute: StringAttribute {

    var m_font : UIFont!
    
    // MARK: 重写父类方法
    override func attributeName() -> NSString {
        
        return NSFontAttributeName
    }
    
    override func attributeValue() -> AnyObject {
        
        if let _ = m_font {
        
            return m_font
        } else {
        
            return UIFont.systemFontOfSize(12)
        }
    }
}
