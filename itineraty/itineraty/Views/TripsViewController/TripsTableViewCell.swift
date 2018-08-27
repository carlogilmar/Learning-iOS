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
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowOffset = CGSize.zero
        cardView.layer.shadowColor = UIColor.darkGray.cgColor
        cardView.layer.cornerRadius = 10
    }
    
    func setup(tripModel: TripModel){
        titleLabel.text = tripModel.title
    }
}
