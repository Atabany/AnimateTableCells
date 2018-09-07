//
//  ViewController.swift
//  AnimateTableCellsDemo
//
//  Created by mohamed elatabany on 9/7/18.
//  Copyright © 2018 mohamed elatabany. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    
    // MARK:- Variables
    var someTexts = ["ANIMATION IS AWESOME", "make your life more beautiful", "ANIMATION IS AWESOME", "make your life more beautiful", "ANIMATION IS AWESOME", "make your life more beautiful", "ANIMATION IS AWESOME", "make your life more beautiful", "ANIMATION IS AWESOME", "make your life more beautiful", "ANIMATION IS AWESOME", "make your life more beautiful", "ANIMATION IS AWESOME", "make your life more beautiful"]
    var cellId = "cell"
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Helper.animateTable2(mytable: self.tableView)
    }
       


}


// MARK: - Table Datasource/ Delegate
extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.someTexts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? basicTableCell else {
            return UITableViewCell()
        }
        let item = self.someTexts[indexPath.row]
        cell.item = item
        return cell
    }

}
