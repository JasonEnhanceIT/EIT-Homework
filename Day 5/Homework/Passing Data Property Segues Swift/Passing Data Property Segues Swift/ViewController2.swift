//
//  ViewController2.swift
//  Passing Data Property Segues Swift
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewController2: UIViewController {
    var passTextSegue = ""


    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        myLabel.text = passTextSegue
        
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
