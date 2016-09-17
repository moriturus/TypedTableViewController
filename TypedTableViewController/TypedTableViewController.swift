//
//  TypedTableViewController.swift
//  TypedTableViewController
//
//  Created by Henrique Sasaki Yuya on 7/15/16.
//  Copyright © 2016 Henrique Sasaki Yuya. All rights reserved.
//

import UIKit

open class TypedTableViewController<T: Collection>: UIViewController, UITableViewDelegate, UITableViewDataSource where T.Index == Int, T.IndexDistance == Int {
    
    open weak var tableView: UITableView!
    private let style: UITableViewStyle
    open var dataSource: T
    
    public init(dataSource: T, style: UITableViewStyle) {
        
        self.dataSource = dataSource
        self.style = style
        super.init(nibName: nil, bundle: nil)
        
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func loadView() {
        
        super.loadView()
        
        let tableView = UITableView(frame: view.bounds, style: style)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        self.tableView = tableView
        
        registerTableViewHeaderFooterViewClasses(forTableView: tableView)
        registerTableViewCellClasses(forTableView: tableView)
        
    }
    
    open func registerTableViewHeaderFooterViewClasses(forTableView tableView: UITableView) {
        
        
    }
    
    open func registerTableViewCellClasses(forTableView tableView: UITableView) {

        
    }
    
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.numberOfRows(inSection: section)
    }

    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        fatalError("not implemented")
    }
    
}

