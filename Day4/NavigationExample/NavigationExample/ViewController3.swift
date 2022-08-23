//
//  ViewController3.swift
//  NavigationExample
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class ViewController3: UIViewController {

    var segue3 = "mySegue3"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func To4(_ sender: Any) {
        performSegue(withIdentifier: "mySegue3", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
