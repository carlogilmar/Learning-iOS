//
//  ViewController.swift
//  wordTrotter
//
//  Created by Carlo Gilmar on 28/07/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstView: UIView = {
        let view = UIView(frame: CGRect(x: 160, y: 240, width: 100, height: 150))
        view.backgroundColor = .blue
        return view
    }()

    let secondView: UIView = {
        let view = UIView(frame: CGRect(x: 20, y: 30, width: 50, height: 50))
        view.backgroundColor = .green
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(firstView)
        firstView.addSubview(secondView)
    }

}

