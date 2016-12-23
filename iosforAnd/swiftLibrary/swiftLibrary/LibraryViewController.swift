//
//  ViewController.swift
//  swiftLibrary
//
//  Created by Mehedee Hassan on 12/20/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //Swift protocol == java Interface
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
   func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        let numberOfRows = 1
        
        
        return numberOfRows
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        let cellIdentifier = "BookTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as!
            BookTableViewCell
        
        return cell
    }

    
    
    
    
    
    
}

