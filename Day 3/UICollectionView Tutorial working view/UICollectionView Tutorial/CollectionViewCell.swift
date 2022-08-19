//
//  CollectionViewCell.swift
//  UICollectionView Tutorial
//
//  Created by Consultant on 8/19/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var countryNameLabel: UILabel!
    
    func configure(with countryName: String)
    {
        countryNameLabel.text = countryName
        //print(countryName)
    }
}
