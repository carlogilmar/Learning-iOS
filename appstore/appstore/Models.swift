//
//  File.swift
//  appstore
//
//  Created by Carlo Gilmar on 24/07/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    var name: String?
    var apps: [App]?
    
    static func fetchFeaturedApps() {
        print("----> making a request")
        //Implementing URLSession
        let urlString = "https://api.letsbuildthatapp.com/appstore/featured"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            guard let data = data else { return }
            print(data.description)
            print("Hay datos !!!")
            print(response)
            }.resume()
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
