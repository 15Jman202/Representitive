//
//  StatesTableViewController.swift
//  Representitive
//
//  Created by Justin Carver on 8/29/16.
//  Copyright © 2016 Justin Carver. All rights reserved.
//

import UIKit

class StatesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StateController.states.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("StateCell", forIndexPath: indexPath)

        let stateCell = StateController.states[indexPath.row]
        cell.textLabel?.text = stateCell

        return cell
    }
    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toRepView", let VC = segue.destinationViewController as? RepresentitiveTableViewController {
            
            if let index = tableView.indexPathForSelectedRow {
            
                let state = StateController.states[index.row]
                
                VC.state = state
            }
        }
    }
}
