//
//  RoundBtn.swift
//  MyFavCity_Proj
//
//  Created by Edward Garcia on 8/19/16.
//  Copyright © 2016 Edward Garcia. All rights reserved.
//

import UIKit

class RoundBtn: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 5.0
        backgroundColor = UIColor(red: 255.0/255.0, green: 172.0/255.0, blue: 11.0/255.0, alpha: 1.0)
        setTitleColor(UIColor.blueColor(), forState: .Normal)
    }

}
