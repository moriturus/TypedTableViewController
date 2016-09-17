//
//  DataSource.swift
//  TypedTableViewController
//
//  Created by Henrique Sasaki Yuya on 7/15/16.
//  Copyright © 2016 Henrique Sasaki Yuya. All rights reserved.
//

extension Collection where Index == Int, Self.IndexDistance == Int {
    
    public var numberOfSections: Int {
        
        return 1
        
    }
    
    public func numberOfRows(inSection section: Int) -> Int {
        
        return self.count
        
    }
    
}

extension MutableCollection where Index == Int {
    
    public subscript(indexPath: IndexPath) -> Self.Iterator.Element {
        
        set {
            
            self[(indexPath as NSIndexPath).row] = newValue
            
        }
        
        get {
            
            return self[(indexPath as NSIndexPath).row]
            
        }
        
    }
    
}

extension Collection where Iterator.Element: Collection, Index == Int, Iterator.Element.Index == Int, Self.IndexDistance == Int, Self.Iterator.Element.IndexDistance == Int {
    
    public var numberOfSections: Int {
        
        return self.count
        
    }
    
    public func numberOfRows(inSection section: Int) -> Int {
        
        return self[section].count
        
    }
    
}

extension MutableCollection where Iterator.Element: MutableCollection, Index == Int, Iterator.Element.Index == Int {
    
    public subscript(indexPath: IndexPath) -> Self.Iterator.Element.Iterator.Element {
        
        set {
            
            self[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row] = newValue
            
        }
        
        get {
            
            return self[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row]
            
        }
        
    }
    
}
