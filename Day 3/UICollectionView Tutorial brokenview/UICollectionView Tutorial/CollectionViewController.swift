//
//  CollectionViewController.swift
//  UICollectionView Tutorial
//
//  Created by Consultant on 8/19/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    let dataSource: [String] = ["button1", "button2", "test"]

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
        
        if var countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell{
            
            countryCell.configure(with: dataSource[indexPath.row])
            
            cell = countryCell
        }
        
        return cell
    }
}
