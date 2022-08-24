//
//  ViewController.swift
//  Autolayout Homework
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let date = Date()
        let calendar = Calendar.current
        let day = calendar.component(.weekday, from: date)
        let month = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        
        //let frame = CGRect(x: 50, y: 100, width: 200, height: 90)
        
        let stackView   = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 16.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        for i in 0..<5
        {
            let label = UILabel()
            label.text = "Today is \(month)-\(day)-\(year)"
            label.backgroundColor = UIColor.clear
            label.textColor = UIColor.red
            label.font = UIFont(name:"Veranda", size: 18.0)
            label.shadowColor = UIColor.darkGray
            
            //Only last label is clickable?
            let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapFunction))
            label.isUserInteractionEnabled = true
            label.addGestureRecognizer(tap)
            label.tag = i
            
            //view.addSubview(label)
            stackView.addArrangedSubview(label)
        }
        
      
        
        view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func tapFunction(sender: UITapGestureRecognizer) {
            print("tap working")
        let view:UIView = sender.view!
            switch (view.tag) {
            case 0:
                print(view.tag) //  info 0 tapped
            case 1:
                print(view.tag) //  info 1 tapped
            case 2:
                print(view.tag) //  info2 tapped
            case 3:
                print(view.tag) //  info 3 tapped
            case 4:
                print(view.tag) //  info 4 tapped
            default:
                break;
            }
        }
}

