//
//  UITableView+GenericCell.swift
//  TypedTableViewController
//
//  Created by Henrique Sasaki Yuya on 7/15/16.
//  Copyright © 2016 Henrique Sasaki Yuya. All rights reserved.
//

import UIKit

/// Extensions for `UITableView`
extension UITableView {
    
    public func registerForHeaderFooterView<T: UIView where T: Reusable>(_: T.Type) {
        
        registerClass(T.self, forHeaderFooterViewReuseIdentifier: T.reusableIdentifier)
        
    }
    
    public func registerForHeaderFooterView<T: UIView where T: Reusable, T: NibLoadable>(_: T.Type) {
        
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        registerNib(nib, forHeaderFooterViewReuseIdentifier: T.reusableIdentifier)
        
    }
    
    public func register<T: UITableViewCell where T: Reusable>(_: T.Type) {
        
        registerClass(T.self, forCellReuseIdentifier: T.reusableIdentifier)
        
    }
    
    public func register<T: UITableViewCell where T: Reusable, T: NibLoadable>(_: T.Type) {
        
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        registerNib(nib, forCellReuseIdentifier: T.reusableIdentifier)
        
    }
    
    public func dequeueReusableHeaderFooterView<T: UIView where T: Reusable>(forSection section: Int) -> T {
        
        guard let v = dequeueReusableHeaderFooterViewWithIdentifier(T.reusableIdentifier) as? T else {
            fatalError("Could not dequeue header/footer view with identifier: \(T.reusableIdentifier)")
        }
        
        return v
        
    }
    
    public func dequeueReusableCell<T: UITableViewCell where T: Reusable>(forIndexPath indexPath: NSIndexPath) -> T {
        
        guard let c = dequeueReusableCellWithIdentifier(T.reusableIdentifier, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reusableIdentifier)")
        }
        
        return c
        
    }
    
}
