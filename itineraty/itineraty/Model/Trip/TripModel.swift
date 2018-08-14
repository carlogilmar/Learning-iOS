//
//  Trip.swift
//  itineraty
//
//  Created by Carlo Gilmar on 14/08/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import Foundation

class TripModel{
    
    var id: String!
    var title: String!
    
    init(title: String){
        id = UUID().uuidString
        self.title = title
    }
}
