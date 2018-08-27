//
//  UIViewExtension.swift
//  itineraty
//
//  Created by Carlo Gilmar on 27/08/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

extension UIView {
    
    func addStyles(){
      layer.shadowOpacity = 1
      layer.shadowOffset = CGSize.zero
      layer.shadowColor = UIColor.darkGray.cgColor
      layer.cornerRadius = 10
    }
    
    func helloWorld(){
        print("Iam a function who lives in the extension UIView")
    }
}
