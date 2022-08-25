//
//  ViewController.swift
//  Passing Data Property Segues Swift
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
        self.performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let segueDestination = segue.destination as! ViewController2
            segueDestination.passTextSegue = "Hello World"
        }

    
}

