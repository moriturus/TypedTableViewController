//
//  UIView+ReusableIdentifier.swift
//  TypedTableViewController
//
//  Created by Henrique Sasaki Yuya on 7/15/16.
//  Copyright © 2016 Henrique Sasaki Yuya. All rights reserved.
//

import UIKit.UIView

/// This type has a static property: `+reusableIdentifier` returns identifier string.
public protocol Reusable {
    
    /// reusable identifier
    static var reusableIdentifier: String { get }
    
}

/// This type has a static property: `+nibName` returns nib file name string.
public protocol NibLoadable {
    
    /// nib file name
    static var nibName: String { get }
    
}

extension Reusable where Self: UIView {
    
    /// The class name is used for identifier by default.
    public static var reusableIdentifier: String {
        return NSStringFromClass(self)
    }
    
}

extension NibLoadable where Self: UIView {
    
    /// The class name is used for nib file name by default.
    public static var nibName: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    
}
