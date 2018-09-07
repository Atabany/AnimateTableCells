//
//  Helper.swift
//  AnimateTableCellsDemo
//
//  Created by mohamed elatabany on 9/7/18.
//  Copyright © 2018 mohamed elatabany. All rights reserved.
//

import UIKit

struct Helper {
    //  Functions
    static func animateTable(mytable : UITableView){
        mytable.reloadData()
        let cells = mytable.visibleCells
        let tableViewHeight = mytable.bounds.size.height
        for cell in cells{
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
        }
        var delayCounter = 0
        for cell in cells{
            
            UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1
            
        }
    }
    
    
    

    static func animateTable2(mytable : UITableView){
        mytable.reloadData()
        let cells = mytable.visibleCells
        let tableViewHeight = mytable.bounds.size.height
        
        for (index, cell) in cells.enumerated() {
            if index % 2 == 0 {
                cell.transform = CGAffineTransform(translationX: 1000, y: tableViewHeight)
            } else {
                cell.transform = CGAffineTransform(translationX: -1000, y: tableViewHeight)
            }
        }
        var delayCounter = 0
        for cell in cells{
            
            UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1
        }
    }
}
