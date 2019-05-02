//
//  ViewExtension.swift
//  Otter
//
//  Created by linzhiyi on 2019/4/21.
//  Copyright © 2019 linzhiyi. All rights reserved.
//

import UIKit

extension UIView {
    
    public var width: CGFloat {
        get {
            return frame.width
        }
        set {
            frame = CGRect(origin: frame.origin, size: CGSize(width: newValue, height: height))
        }
    }
    
    public var height: CGFloat {
        get {
            return frame.height
        }
        set {
            frame = CGRect(origin: frame.origin, size: CGSize(width: width, height: newValue))
        }
    }
    
    public var top: CGFloat {
        get {
            return frame.origin.y
        }
        set {
            frame = CGRect(origin: CGPoint(x: left, y: newValue), size: frame.size)
        }
    }
    
    public var bottom: CGFloat {
        get {
            return top + height
        }
        
        set {
            frame = CGRect(origin: CGPoint(x: left, y: newValue - height), size: frame.size)
        }
    }
    
    
    public var left: CGFloat {
        get {
            return frame.origin.x
        }
        
        set {
            frame = CGRect(origin: CGPoint(x: newValue, y: top), size: frame.size)
        }
    }
    
    public var right: CGFloat {
        get {
            return left + width
        }
        
        set {
            frame = CGRect(origin: CGPoint(x: newValue - width, y: top), size: frame.size)
        }
    }
    
    
    public var centerX: CGFloat {
        get {
            return center.x
        }
        set {
            center = CGPoint(x: newValue, y: centerY)
        }
    }
    
    public var centerY: CGFloat {
        get {
            return center.y
        }
        set {
            center = CGPoint(x: centerX, y: newValue)
        }
    }
    
    public var size: CGSize {
        get {
            return frame.size
        }
        
        set {
            frame.size = newValue
        }
    }
    
    public var origin: CGPoint {
        get {
            return frame.origin
        }
        set {
            frame.origin = newValue
        }
    }
}

