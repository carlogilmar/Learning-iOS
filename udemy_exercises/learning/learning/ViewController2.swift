//
//  screen2.swift
//  learning
//
//  Created by Carlo Gilmar on 15/09/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {
    
    @IBOutlet var webView: WKWebView!
    
    var pdfReceived:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showPdf()
    }
    
    func showPdf(){
        let pdfPath = URL( fileURLWithPath: Bundle.main.path(forResource: pdfReceived!, ofType: "pdf", inDirectory: "PDF")!)
        let pdf = try? Data(contentsOf: pdfPath)
        webView.load(pdf!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: pdfPath)
    }
    
}

