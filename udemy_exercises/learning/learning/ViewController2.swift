//
//  screen2.swift
//  learning
//
//  Created by Carlo Gilmar on 15/09/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    var pdfReceived:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message.text = pdfReceived!
    }
    
}

