//
//  ViewController.swift
//  TableViewExample
//
//  Created by Maciek on 23.06.2014.
//  Copyright (c) 2014 Maciek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let data: String[] = ["john", "jack", "joe", "julie"]
    let tableView: UITableView = UITableView()
//    let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
            cell.selectionStyle = UITableViewCellSelectionStyle.Blue
            println("!!!!!!!!!!!!!!! CELL NEW")
        }
        
        cell.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        cell.textLabel.text = "AAAAA"
        cell.detailTextLabel.text = "bbbbbb"
        let path: String = NSBundle.mainBundle().pathForResource("bruce", ofType: "jpg")
        let image: UIImage = UIImage(contentsOfFile: path)
        cell.imageView.image = image
        return cell
        
//        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
//        
//        cell.textLabel.text = self.data[indexPath.row]
//        
//        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("Hello \(self.data[indexPath.row])!")
        self.navigationController.pushViewController(DetailViewController(), animated: true)
    }
    
    func configureControls() {
        
        self.view.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.view.addSubview(self.tableView)
        self.tableView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        var metrics = [
            "topMargin":0,
            "leftMargin": 0,
            "width": self.view.frame.width,
            "height": self.view.frame.size.height]
        
        var trailingTableViewConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-leftMargin-[tableView(width)]-|", options: nil, metrics: metrics, views: ["tableView": tableView])
        //        self.view.addConstraints(topUsernameFieldConstraints)
        self.view.addConstraints(trailingTableViewConstraints)
        //        self.tableView.borderStyle = UITextBorderStyle.RoundedRect
        
        var topTableViewConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-topMargin-[tableView(height)]-|", options: nil, metrics: metrics, views: ["tableView": tableView])
        self.view.addConstraints(topTableViewConstraints)
        
        let addButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: nil)
        self.navigationItem.title = "List of sth"
        self.navigationItem.rightBarButtonItem = addButton
        
    }
    
    // NIE TRZEBA BO ZALATWIAJA TO CONSTRAINTY
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        tableView.frame = CGRectMake(0, self.navigationController.navigationBar.frame.height, self.view.frame.width, self.view.frame.size.height - navigationController.navigationBar.frame.height)
//    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureControls()
        tableView.delegate = self
        tableView.dataSource = self
//        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

