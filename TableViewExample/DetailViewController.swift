//
//  DetailViewController.swift
//  TableViewExample
//
//  Created by Maciek on 24.06.2014.
//  Copyright (c) 2014 Maciek. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
    
    func back() {
        self.navigationController.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
        let backButton: UIBarButtonItem = UIBarButtonItem(title: "Previous", style: UIBarButtonItemStyle.Plain, target: self, action: "back")
        self.navigationItem.leftBarButtonItem = backButton
    }
    
}
