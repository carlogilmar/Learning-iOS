//
//  File.swift
//  appstore
//
//  Created by Carlo Gilmar on 24/07/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

struct Course: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
}


class AppCategory: NSObject {
    var name: String?
    var apps: [App]?
    
    static func fetchFeaturedApps() {
        print("----> making a request")
       
        let jsonUrlString = "https://api.letsbuildthatapp.com/appstore/featured"
        guard let url = URL(string: jsonUrlString) else { return }
        
                print("a- >>>>>>>>>>>>")
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data else { return }
            do {
                print(">>>>>>>>>>>>")
                //let courses = try JSONDecoder().decode([App].self, from: data)
                print(data)
                print(">>>>>>>>>>>>")
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
        }.resume()
                print("b- >>>>>>>>>>>>")
    }
    
    static func sampleAppCategories() -> [AppCategory] {
        
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps!"
        var apps = [App]() //App Array
        let frozenApp = App()
        frozenApp.name = "Disney Build It: Frozen"
        frozenApp.imageName = "logo"
        frozenApp.category = "Entertaiment"
        frozenApp.price = NSNumber(value: 3.99)
        apps.append(frozenApp)
        bestNewAppsCategory.apps = apps
        
        let bestNewGamesCstegory = AppCategory()
        bestNewGamesCstegory.name = "Best New Games🌚"
        var games = [App]()
        let telepatainApp = App()
        telepatainApp.name = "Telepatian"
        telepatainApp.category = "Games"
        telepatainApp.imageName = "appstore"
        telepatainApp.price = NSNumber(value: 2.99)
        games.append(telepatainApp)
        bestNewGamesCstegory.apps = games
        
        return [bestNewAppsCategory, bestNewGamesCstegory]
    }
}

class App: NSObject{
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
}


