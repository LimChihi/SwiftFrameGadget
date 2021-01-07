//
//  ViewExtension.swift
//  Otter
//
//  Created by linzhiyi on 2019/4/21.
//  Copyright © 2019 linzhiyi. All rights reserved.
//

import UIKit

extension UIView {
    
    @inlinable
    public var width: CGFloat {
        get {
            frame.size.width
        }
        set {
            frame.size.width = newValue
        }
    }
    
    @inlinable
    public var height: CGFloat {
        get {
            frame.size.height
        }
        set {
            frame.size.height = newValue
        }
    }
    
    @inlinable
    public var top: CGFloat {
        get {
            frame.origin.y
        }
        set {
            frame.origin.y = newValue
        }
    }
    
    @inlinable
    public var bottom: CGFloat {
        get {
            top + height
        }
        set {
            frame.origin.y = newValue - height
        }
    }
    
    @inlinable
    public var left: CGFloat {
        get {
            frame.origin.x
        }
        set {
            frame.origin.x = newValue
        }
    }
    
    @inlinable
    public var right: CGFloat {
        get {
            left + width
        }
        set {
            frame.origin.x = newValue - width
        }
    }
    
    @inlinable
    public var centerX: CGFloat {
        get {
            center.x
        }
        set {
            center.x = newValue
        }
    }
    
    @inlinable
    public var centerY: CGFloat {
        get {
            center.y
        }
        set {
            center.y = newValue
        }
    }
    
    @inlinable
    public var size: CGSize {
        get {
            frame.size
        }
        set {
            frame.size = newValue
        }
    }
    
    @inlinable
    public var origin: CGPoint {
        get {
            frame.origin
        }
        set {
            frame.origin = newValue
        }
    }
}

