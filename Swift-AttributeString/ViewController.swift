//
//  ViewController.swift
//  Swift-AttributeString
//
//  Created by FrankLiu on 15/10/9.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var m_label  : UILabel!
    var m_string : NSMutableAttributedString!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        createString()
        createLabel()
    }
    
    func createString() {
    
        m_string = NSMutableAttributedString(string: "刘大帅")
        
        // 字体属性
        let labelFont : FontAttribute! = FontAttribute()
        labelFont.m_effectRange        = NSMakeRange(0, m_string.length)
        labelFont.m_font               = UIFont(name: "AppleSDGothicNeo-Light", size: 28)
        m_string.addStringAttribute(labelFont)
        
        // 文本颜色属性
        let labelColor : ForegroundColorAttribute! = ForegroundColorAttribute()
        labelColor.m_effectRange                   = NSMakeRange(1, 2)
        labelColor.m_color                         = UIColor.redColor()
        m_string.addStringAttribute(labelColor)
    }
    
    func createLabel() {
    
        m_label = UILabel(frame: CGRectMake(100, 100, 100, 100));
        m_label.center = view.center
        m_label.attributedText = m_string
        view.addSubview(m_label)
    }

}

