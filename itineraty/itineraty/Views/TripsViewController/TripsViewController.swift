//
//  TripsViewController.swift
//  itineraty
//
//  Created by Carlo Gilmar on 14/08/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TripFunctions.readTrips(completition: { [weak self] in
            self?.tableView.reloadData()
        })
    }
}
