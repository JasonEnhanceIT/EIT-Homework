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
        
        let frame = CGRect(x: 50, y: 100, width: 200, height: 21)
        let label = UILabel(frame: frame)
        label.text = "Today is \(month)-\(day)-\(year)"
        view.addSubview(label)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

