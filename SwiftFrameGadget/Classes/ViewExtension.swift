//
//  ViewExtension.swift
//  Otter
//
//  Created by linzhiyi on 2019/4/21.
//  Copyright © 2019 linzhiyi. All rights reserved.
//

import UIKit

extension UIView {
    
    var width: CGFloat {
        get {
            return frame.width
        }
        set {
            frame = CGRect(origin: frame.origin, size: CGSize(width: newValue, height: height))
        }
    }
    
    var height: CGFloat {
        get {
            return frame.height
        }
        set {
            frame = CGRect(origin: frame.origin, size: CGSize(width: width, height: newValue))
        }
    }
    
    var top: CGFloat {
        get {
            return frame.origin.y
        }
        set {
            frame = CGRect(origin: CGPoint(x: left, y: newValue), size: frame.size)
        }
    }
    
    var bottom: CGFloat {
        get {
            return top + height
        }
        
        set {
            frame = CGRect(origin: CGPoint(x: left, y: newValue - height), size: frame.size)
        }
    }
    
    
    var left: CGFloat {
        get {
            return frame.origin.x
        }
        
        set {
            frame = CGRect(origin: CGPoint(x: newValue, y: top), size: frame.size)
        }
    }
    
    var right: CGFloat {
        get {
            return left + width
        }
        
        set {
            frame = CGRect(origin: CGPoint(x: newValue - width, y: top), size: frame.size)
        }
    }
    
    
    var centerX: CGFloat {
        get {
            return center.x
        }
        set {
            center = CGPoint(x: newValue, y: centerY)
        }
    }
    
    var centerY: CGFloat {
        get {
            return center.y
        }
        set {
            center = CGPoint(x: centerX, y: newValue)
        }
    }
    
    var size: CGSize {
        get {
            return frame.size
        }
        
        set {
            frame.size = newValue
        }
    }
    
    var origin: CGPoint {
        get {
            return frame.origin
        }
        set {
            frame.origin = newValue
        }
    }
}

