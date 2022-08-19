//
//  CalcCollectionViewCell.swift
//  Calculator Homework
//
//  Created by Consultant on 8/19/22.
//

import UIKit

class CalcCollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet private weak var buttonLabel: UILabel!
    
    func configure(with buttonName: String)
    {
        buttonLabel.text = buttonName
    }
    
}
