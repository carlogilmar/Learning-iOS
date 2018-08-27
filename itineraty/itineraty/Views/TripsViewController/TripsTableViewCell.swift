//
//  TripsTableViewCell.swift
//  itineraty
//
//  Created by Carlo Gilmar on 27/08/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

// CocoaTouch Class
class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("I'm preparing a Table View Cell in CocoaTouchClass :D")
        // This function lives in the UIView Extension
        cardView.addStyles()
        cardView.helloWorld()
    }
    
    func setup(tripModel: TripModel){
        titleLabel.text = tripModel.title
    }
}
