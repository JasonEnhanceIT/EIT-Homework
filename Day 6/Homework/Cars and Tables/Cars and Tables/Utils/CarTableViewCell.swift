//
//  CarTableViewCell.swift
//  Cars and Tables
//
//  Created by Consultant on 8/25/22.
//

import Foundation
import UIKit

class CarTableViewCell: UITableViewCell{
    var carImageView = UIImageView()
    var carTitle = UILabel()
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(carImageView)
        addSubview(carTitle)
        configurImageView()
        configureTitleLabel()
        setImageConstriants()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(_ car: Car){
        carImageView.image = car.image
        carTitle.text = car.title
    }
    
    func configurImageView(){
        carImageView.layer.cornerRadius = 10
        carImageView.clipsToBounds = true
    }
    
    func configureTitleLabel(){
        carTitle.numberOfLines = 0
        carTitle.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstriants(){
        carImageView.translatesAutoresizingMaskIntoConstraints = false
        carImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        carImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        carImageView.widthAnchor.constraint(equalTo: carImageView.heightAnchor, multiplier: 16/9).isActive = true
        carImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setTitleLabelConstraints(){
        carTitle.translatesAutoresizingMaskIntoConstraints = false
        carTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        carTitle.leadingAnchor.constraint(equalTo: carImageView.trailingAnchor, constant: 20).isActive = true
        carTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        carTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
}
