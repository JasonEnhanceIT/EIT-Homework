//
//  ViewController.swift
//  NavigationExample
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class ViewController: UIViewController {

    var segue = "mySegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButton(_ sender: Any) {
        performSegue(withIdentifier: segue, sender: nil)
    }
    
}

