//
//  ViewController.swift
//  Passing Data Property Swift
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonTap() {
            let vc = storyboard?.instantiateViewController(withIdentifier: "vc2") as! ViewController2
            vc.passText = "Hello World"
            
            present(vc, animated: true, completion: nil)
        }



}

