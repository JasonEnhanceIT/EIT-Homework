//
//  CollectionViewController.swift
//  UICollectionView Tutorial
//
//  Created by Consultant on 8/19/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    let dataSource: [String] = ["Clear", "Sign", "Percent", "Devide", "7", "8", "9", "Times", "4", "5", "6", "Minus"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        var cell = UICollectionViewCell()
        
        //"Cell" should be identifier for cell obj in inspector
        
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell{
            
            countryCell.configure(with: dataSource[indexPath.row])
            
            cell = countryCell
        }
        
        return cell
    }
}
