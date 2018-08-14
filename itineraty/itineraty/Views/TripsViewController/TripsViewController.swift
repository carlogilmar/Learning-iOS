//
//  TripsViewController.swift
//  itineraty
//
//  Created by Carlo Gilmar on 14/08/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

/*
 
    You can implement protocols as UIViewController, UITableViewDataSource...
    and you will have to implement their functions in your controller
        THIS IS THE DELEGATE PATTERN
 
 */
class TripsViewController: UIViewController, UITableViewDataSource{
    
    // This is the table view from the storyboard !!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Refering the table view data source as self for get their own reference
        tableView.dataSource = self
        
        // I don't understand much about this... but is the way for call the readTrips function
        // I made this function with the dispatcher queue for get priotity to this threat
        TripFunctions.readTrips(completition: { [weak self] in
            self?.tableView.reloadData()
        })
    }
    
    // this functions you have to implement as part of the UITableViewDataSource protocol and the delegate pattern
    
    // how many rows you will have ?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    
    // What are you show in every row? 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellId")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cellId")
        }
        cell!.textLabel?.text = Data.tripModels[indexPath.row].title
        return cell!
    }
}
