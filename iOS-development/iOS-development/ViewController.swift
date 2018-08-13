//
//  ViewController.swift
//  iOS-development
//
//  Created by Carlo Gilmar on 13/08/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Hello World!!!"
        label.font = label.font.withSize(40)
        return label
    }()
   
    var distance = Distance(miles: 1000)
    
    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var milesTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        milesTextField.text = "\(distance.miles)"
        kmTextField.text = "\(distance.km)"
//        view.addSubview(redView)
//        view.addSubview(label)
//        redView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height/2)
//        label.frame = CGRect(x: 20, y: self.view.bounds.height/2, width: 20, height: 20)
//        label.sizeToFit()
    }

}

