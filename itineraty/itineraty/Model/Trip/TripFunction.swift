//
//  TripFunction.swift
//  itineraty
//
//  Created by Carlo Gilmar on 14/08/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import Foundation

class TripFunctions {
    
    static func createTrip( tripModel: TripModel ){}
    
    static func readTrips( completition: @escaping () -> ()){
        // This is used for add priority in this threat
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.tripModels.count == 0 {
                Data.tripModels.append(TripModel(title: "San Luis Potosí"))
                Data.tripModels.append(TripModel(title: "Aguascalientes"))
                Data.tripModels.append(TripModel(title: "Guanajuato"))
            }
        }
        DispatchQueue.main.async {
            completition()
        }
    }
    
    static func updateTrip( tripModel: TripModel ){}
    
    static func deleteTrip(tripModel: TripModel){}
}
