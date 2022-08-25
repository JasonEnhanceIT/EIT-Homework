//
//  UIView+Ext.swift
//  Cars and Tables
//
//  Created by Consultant on 8/25/22.
//

import Foundation
import UIKit

extension UIView{
    //set up autolayout constraints to take up fullscreen
    //0 all comntraints
    func pin(_ superView:UIView){
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}
