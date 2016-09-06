//
//  TypedTableViewController.swift
//  TypedTableViewController
//
//  Created by Henrique Sasaki Yuya on 7/15/16.
//  Copyright © 2016 Henrique Sasaki Yuya. All rights reserved.
//

import UIKit.UITableViewController

public class TypedTableViewController<T: CollectionType where T.Index == Int>: UITableViewController {
    
    public var dataSource: T
    
    public init(dataSource: T, style: UITableViewStyle) {
        
        self.dataSource = dataSource
        super.init(style: style)
        
    }
    
    public override func loadView() {
        
        super.loadView()
        
        registerTableViewHeaderFooterViewClasses(forTableView: tableView)
        registerTableViewCellClasses(forTableView: tableView)
        
    }
    
    public func registerTableViewHeaderFooterViewClasses(forTableView tableView: UITableView) {
        
        
    }
    
    public func registerTableViewCellClasses(forTableView tableView: UITableView) {

        
    }
    
}

