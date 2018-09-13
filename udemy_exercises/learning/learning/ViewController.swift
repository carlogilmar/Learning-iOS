//
//  ViewController.swift
//  learning
//
//  Created by Carlo Gilmar on 13/09/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func create(_ sender: UIButton) {
        print("Creating...")
    }
    
    @IBAction func show(_ sender: UIButton) {
        print("Show!")
    }
    
    @IBAction func turnOn(_ sender: UIButton) {
        print("Turn on!!")
    }
    
    @IBAction func speedUp(_ sender: UIButton) {
        print("Speed up!")
    }
}

