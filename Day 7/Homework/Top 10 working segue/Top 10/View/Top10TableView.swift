//
//  ViewController.swift
//  Top10
//
//  Created by Consultant on 8/25/22.
//

import UIKit

//protocol DetailDelegateProtocol {
//    func setDetailObj(myData: String)
//}

class Top10TableView: UIViewController {

    var tableView = UITableView()
    var top: [Top10ListItem] = []
    let topCell = "topCell"
    var selected:Top10ListItem? = nil
//    var delegate: DetailDelegateProtocol? = nil
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        
        configureTableView()
        setTableViewDelegates()
        top = fetchData()
        super.viewDidLoad()
    }
    
    func configureTableView(){
        //adding tableview to VC
        view.addSubview(tableView)
        tableView.rowHeight = 100
        tableView.register(Top10TableViewCell.self, forCellReuseIdentifier: topCell)
        tableView.pin(view)
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension UIView{
    //set up autolayout constraints to take up fullscreen
    //0 all comntraints
    func pin(_ superView:UIView){
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}


extension Top10TableView: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return top.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: topCell) as! Top10TableViewCell
        
        let topCell = top[indexPath.row]
        cell.set(topCell)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if self.delegate != nil {
//            print("not nil")
////            let dataToBeSent = groceryList[indexPath.row]
////            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent)
////            //doesn't work
////            //dismiss(animated: true, completion: nil)
////            self.navigationController?.popToRootViewController(animated: true)
//        }
        
//        let vc = storyboard?.instantiateViewController(withIdentifier: "dvc") as! DetailViewController
//        vc.detailObj = top[indexPath.row]
//        present(vc, animated: true, completion: nil)
        
        //
        selected = top[indexPath.row]
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let segueDestination = segue.destination as! DetailViewController
            segueDestination.detailObj = selected
        }
}

extension Top10TableView{
    func fetchData() -> [Top10ListItem] {
        let top = [ Top10ListItem(image: Images.astonMartin, title:  "2019AstonMartinDBSSuperleggera", description: "desc")
                     ]
        return top
    }
}
