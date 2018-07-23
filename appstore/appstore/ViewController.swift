//
//  ViewController.swift
//  appstore
//
//  Created by Carlo Gilmar on 23/07/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

/*
 
 todos:
 
 - Create the UICollectionViewController
 - Initialize controller in the AppDelegate
 - Make the numbreOfItemsInSection function returning 3
 - Complete the cellForItem function
 - Create a class CategoryCell which implement UICollectionViewCell and initialize
 - Complete the cellForItem function returning cellForItem
 - Register the category cell
 - Add sizeForItem function and implements UICollectionViewDelegateFlowLayout
 */

class FeaturedAppsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    private let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        return cell
    }
    
    // items in collection view
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
}

class CategoryCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        print("Category cell initialize...")
        print(frame.debugDescription)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init coder has not been implemented!!!!")
    }
    
    func setupViews(){
        backgroundColor = .red
    }
}
