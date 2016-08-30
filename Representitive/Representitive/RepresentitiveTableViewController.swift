//
//  RepresentitiveTableViewController.swift
//  Representitive
//
//  Created by Justin Carver on 8/29/16.
//  Copyright © 2016 Justin Carver. All rights reserved.
//

import UIKit

class RepresentitiveTableViewController: UITableViewController {

    var state: String?
    var representitives: [Representitive] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let state = state {
            
            RepController.GetReps(state, completion: { (rep) in
                self.representitives = rep
                dispatch_async(dispatch_get_main_queue(), {
                    self.tableView.reloadData()
                })
            })
        }
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return representitives.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as? RepCellTableViewCell

        let reps = representitives[indexPath.row]
        cell?.updateWithReps(reps)

        return cell ?? RepCellTableViewCell()
    }
}
