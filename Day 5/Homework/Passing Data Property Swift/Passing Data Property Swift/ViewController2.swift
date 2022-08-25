//
//  ViewController2.swift
//  Passing Data Property Swift
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewController2: UIViewController {
    
    var passText = ""
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        textLabel.text = passText
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
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
