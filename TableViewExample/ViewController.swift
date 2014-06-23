//
//  ViewController.swift
//  TableViewExample
//
//  Created by Maciek on 23.06.2014.
//  Copyright (c) 2014 Maciek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data: String[] = ["john", "jack", "joe", "julie"]
    
    var tableView: UITableView = UITableView()
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel.text = self.data[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("Hello \(self.data[indexPath.row])!")
    }
    
    func configureControls() {
        self.view.addSubview(self.tableView)
        self.tableView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        var trailingTableViewConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[tableView]-|", options: nil, metrics: nil, views: ["tableView": tableView])
        //        self.view.addConstraints(topUsernameFieldConstraints)
        self.view.addConstraints(trailingTableViewConstraints)
        //        self.tableView.borderStyle = UITextBorderStyle.RoundedRect
        
        var topTableViewConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[tableView]-|", options: nil, metrics: nil, views: ["tableView": tableView])
        self.view.addConstraints(topTableViewConstraints)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureControls()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

