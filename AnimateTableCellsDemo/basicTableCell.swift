//
//  basicTableCell.swift
//  AnimateTableCellsDemo
//
//  Created by mohamed elatabany on 9/7/18.
//  Copyright © 2018 mohamed elatabany. All rights reserved.
//

import UIKit

class basicTableCell: UITableViewCell {
    @IBOutlet weak var labelText: UILabel!
    var item: String! {
        didSet {
            self.labelText.text = item
        }
    }
}
