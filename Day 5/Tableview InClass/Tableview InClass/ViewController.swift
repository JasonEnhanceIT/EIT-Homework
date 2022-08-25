//
//  ViewController.swift
//  Tableview InClass
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewController: UIViewController, MyDataSendingDelegateProtocol {
    
    @IBOutlet weak var display: UILabel!
    let vc = TableViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        vc.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func Button(_ sender: Any) {
        vc.groceryList = ["milk", "eggs", "cheese"]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // Delegate Method
        func sendDataToFirstViewController(myData: String) {
            print("delegate recieved")
            //display.text = vc.selected
            display.text = myData
        }
}

