//
//  CustomTableViewCell.swift
//  TableViewExample
//
//  Created by Maciek on 26.06.2014.
//  Copyright (c) 2014 Maciek. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    init(frame: CGRect, reuseIdentifier: String!){
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
    }

    
//    init(reuseIdentifier: String!) {
//        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
//    }
    
}
