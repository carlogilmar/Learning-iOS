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
    
    override func loadView() {
        super.loadView()
        print("1.- Loading view")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("2.- View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("3.- View did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("4.- View will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("5.- View did disappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("6.- Did receive memory warning!")
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

