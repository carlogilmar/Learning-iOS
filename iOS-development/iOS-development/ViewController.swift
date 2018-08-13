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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        redView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height/2)
        view.addSubview(redView)
    }

}

