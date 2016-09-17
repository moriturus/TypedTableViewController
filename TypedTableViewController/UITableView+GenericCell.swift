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
    
    public func registerForHeaderFooterView<T: UIView>(_: T.Type) where T: Reusable {
        
        self.register(T.self, forHeaderFooterViewReuseIdentifier: T.reusableIdentifier)
        
    }
    
    public func registerForHeaderFooterView<T: UIView>(_: T.Type) where T: Reusable, T: NibLoadable {
        
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        self.register(nib, forHeaderFooterViewReuseIdentifier: T.reusableIdentifier)
        
    }
    
    public func register<T: UITableViewCell>(_: T.Type) where T: Reusable {
        
        self.register(T.self, forCellReuseIdentifier: T.reusableIdentifier)
        
    }
    
    public func register<T: UITableViewCell>(_: T.Type) where T: Reusable, T: NibLoadable {
        
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        self.register(nib, forCellReuseIdentifier: T.reusableIdentifier)
        
    }
    
    public func dequeueReusableHeaderFooterView<T: UIView>(forSection section: Int) -> T where T: Reusable {
        
        guard let v = self.dequeueReusableHeaderFooterView(withIdentifier: T.reusableIdentifier) as? T else {
            fatalError("Could not dequeue header/footer view with identifier: \(T.reusableIdentifier)")
        }
        
        return v
        
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: Reusable {
        
        guard let c = self.dequeueReusableCell(withIdentifier: T.reusableIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reusableIdentifier)")
        }
        
        return c
        
    }
    
}
