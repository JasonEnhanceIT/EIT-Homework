//
//  ViewController.swift
//  Tableview Class
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButton(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: nil)
    }
    
}

