//
//  DataSource.swift
//  TypedTableViewController
//
//  Created by Henrique Sasaki Yuya on 7/15/16.
//  Copyright © 2016 Henrique Sasaki Yuya. All rights reserved.
//

extension CollectionType where Index == Int {
    
    public var numberOfSections: Int {
        
        return 1
        
    }
    
    public func numberOfRowsInSection(section: Int) -> Int {
        
        return self.count
        
    }
    
}

extension MutableCollectionType where Index == Int {
    
    public subscript(indexPath: NSIndexPath) -> Self.Generator.Element {
        
        set {
            
            self[indexPath.row] = newValue
            
        }
        
        get {
            
            return self[indexPath.row]
            
        }
        
    }
    
}

extension CollectionType where Generator.Element: CollectionType, Index == Int, Generator.Element.Index == Int {
    
    public var numberOfSections: Int {
        
        return self.count
        
    }
    
    public func numberOfRowsInSection(section: Int) -> Int {
        
        return self[section].count
        
    }
    
}

extension MutableCollectionType where Generator.Element: MutableCollectionType, Index == Int, Generator.Element.Index == Int {
    
    public subscript(indexPath: NSIndexPath) -> Self.Generator.Element.Generator.Element {
        
        set {
            
            self[indexPath.section][indexPath.row] = newValue
            
        }
        
        get {
            
            return self[indexPath.section][indexPath.row]
            
        }
        
    }
    
}
