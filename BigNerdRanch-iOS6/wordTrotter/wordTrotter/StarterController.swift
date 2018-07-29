//
//  StarterController.swift
//  wordTrotter
//
//  Created by Carlo Gilmar on 28/07/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class StarterController: UIViewController {

    let scrollView: UIScrollView = {
        let screensize: CGRect = UIScreen.main.bounds
        print("Screensize: \(screensize)")
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        scrollView.contentSize = CGSize(width: screenWidth, height: 2000)
        return scrollView
    }()
    
    let label1: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "200"
        label.textColor = .white
        label.font = UIFont(name: label.font.fontName, size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "degrees Fahrenheit"
        label.textColor = .white
        label.font = UIFont(name: label.font.fontName, size: 20)
        return label
    }()
    
    let label3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "is really"
        label.textColor = .white
        label.font = UIFont(name: label.font.fontName, size: 20)
        return label
    }()
    
    let label4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "100"
        label.textColor = .white
        label.font = UIFont(name: label.font.fontName, size: 20)
        return label
    }()
    
    let label5: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "degree Celsius"
        label.textColor = .white
        label.font = UIFont(name: label.font.fontName, size: 20)
        return label
    }()
    
    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let view3: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let view4: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let view5: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let textEdit: UITextView = {
        let field = UITextView()
        field.text = "98"
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.accessibilityScroll(.down)
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        scrollView.addSubview(view3)
        scrollView.addSubview(view4)
        scrollView.addSubview(view5)
        scrollView.addSubview(textEdit)
        //scrollView.addSubview(label1)
        scrollView.addSubview(label2)
        scrollView.addSubview(label3)
        scrollView.addSubview(label4)
        scrollView.addSubview(label5)
        
        setLabelAnchors()
    }
    
    func setLabelAnchors(){
        view1.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        view1.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        view1.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1).isActive = true
        view1.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 0.10).isActive = true

        textEdit.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        textEdit.bottomAnchor.constraint(equalTo: view1.bottomAnchor).isActive = true
        textEdit.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.5).isActive = true
        textEdit.heightAnchor.constraint(equalTo: view1.heightAnchor, multiplier: 0.40).isActive = true

//        label1.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
//        label1.bottomAnchor.constraint(equalTo: view1.bottomAnchor).isActive = true
//        label1.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 0.9).isActive = true
//        label1.heightAnchor.constraint(equalTo: view1.heightAnchor, multiplier: 0.40).isActive = true

        view2.topAnchor.constraint(equalTo: view1.bottomAnchor).isActive = true
        view2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        view2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.10).isActive = true
 
        label2.centerXAnchor.constraint(equalTo: view2.centerXAnchor).isActive = true
        label2.bottomAnchor.constraint(equalTo: view2.bottomAnchor).isActive = true
        label2.widthAnchor.constraint(equalTo: view2.widthAnchor, multiplier: 0.9).isActive = true
        label2.heightAnchor.constraint(equalTo: view2.heightAnchor, multiplier: 0.40).isActive = true
        
        view3.topAnchor.constraint(equalTo: view2.bottomAnchor).isActive = true
        view3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        view3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.10).isActive = true
        
        label3.centerXAnchor.constraint(equalTo: view3.centerXAnchor).isActive = true
        label3.bottomAnchor.constraint(equalTo: view3.bottomAnchor).isActive = true
        label3.widthAnchor.constraint(equalTo: view3.widthAnchor, multiplier: 0.9).isActive = true
        label3.heightAnchor.constraint(equalTo: view3.heightAnchor, multiplier: 0.40).isActive = true
        
        view4.topAnchor.constraint(equalTo: view3.bottomAnchor).isActive = true
        view4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        view4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.10).isActive = true
       
        label4.centerXAnchor.constraint(equalTo: view4.centerXAnchor).isActive = true
        label4.bottomAnchor.constraint(equalTo: view4.bottomAnchor).isActive = true
        label4.widthAnchor.constraint(equalTo: view4.widthAnchor, multiplier: 0.9).isActive = true
        label4.heightAnchor.constraint(equalTo: view4.heightAnchor, multiplier: 0.40).isActive = true
        
        view5.topAnchor.constraint(equalTo: view4.bottomAnchor).isActive = true
        view5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        view5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.10).isActive = true
        
        label5.centerXAnchor.constraint(equalTo: view5.centerXAnchor).isActive = true
        label5.bottomAnchor.constraint(equalTo: view5.bottomAnchor).isActive = true
        label5.widthAnchor.constraint(equalTo: view5.widthAnchor, multiplier: 0.9).isActive = true
        label5.heightAnchor.constraint(equalTo: view5.heightAnchor, multiplier: 0.40).isActive = true
    }

}
