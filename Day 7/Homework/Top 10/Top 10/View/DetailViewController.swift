//
//  DetailViewController.swift
//  Top 10
//
//  Created by Consultant on 8/26/22.
//

import UIKit

class DetailViewController: UIViewController {
    var detailObj: Top10ListItem? = nil
    //let vc = Top10TableView()
    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //vc.delegate = self
        Label.text = detailObj?.title
    }
    
//    func setDetailObj(myData: String) {
//        print("delegate recieved")
//        Label.text = detailObj?.title
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
