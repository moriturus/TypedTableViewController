//
//  TypedTableViewController.swift
//  TypedTableViewController
//
//  Created by Henrique Sasaki Yuya on 7/15/16.
//  Copyright © 2016 Henrique Sasaki Yuya. All rights reserved.
//

import UIKit

public class TypedTableViewController<T: CollectionType where T.Index == Int>: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public weak var tableView: UITableView!
    private let style: UITableViewStyle
    public var dataSource: T
    
    public init(dataSource: T, style: UITableViewStyle) {
        
        self.dataSource = dataSource
        self.style = style
        super.init(nibName: nil, bundle: nil)
        
    }
    
    public override func loadView() {
        
        super.loadView()
        
        let tableView = UITableView(frame: view.bounds, style: style)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        self.tableView = tableView
        
        registerTableViewHeaderFooterViewClasses(forTableView: tableView)
        registerTableViewCellClasses(forTableView: tableView)
        
    }
    
    public func registerTableViewHeaderFooterViewClasses(forTableView tableView: UITableView) {
        
        
    }
    
    public func registerTableViewCellClasses(forTableView tableView: UITableView) {

        
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.numberOfRowsInSection(section)
    }

    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        fatalError("not implemented")
    }
    
}

