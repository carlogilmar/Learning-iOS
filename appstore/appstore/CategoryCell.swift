//
//  CategoryCell.swift
//  appstore
//
//  Created by Carlo Gilmar on 23/07/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    let cellId = "cellId"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        print("Category cell initialize...")
        print(frame.debugDescription)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init coder has not been implemented!!!!")
    }
    
    let appsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    func setupViews(){
        backgroundColor = .white
        addSubview(appsCollectionView)
        
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView]))
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: frame.height)
    }
}

class AppCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init has not been implemented")
    }
    func setupViews(){
        backgroundColor = .black
    }
}
