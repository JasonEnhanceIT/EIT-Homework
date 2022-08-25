//
//  ViewController.swift
//  Cars and Tables
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class CarsListVC: UIViewController {

    var tableView = UITableView()
    var cars: [Car] = []
    let carCell = "carCell"
    override func viewDidLoad() {
        view.backgroundColor = .green
        title = "Top Exotic Cars"
        
        configureTableView()
        setTableViewDelegates()
        cars = fetchData()
        super.viewDidLoad()
    }
    
    func configureTableView(){
        //adding tableview to VC
        view.addSubview(tableView)
        tableView.rowHeight = 100
        tableView.register(CarTableViewCell.self, forCellReuseIdentifier: carCell)
        tableView.pin(view)
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension CarsListVC: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: carCell) as! CarTableViewCell
        
        let car = cars[indexPath.row]
        cell.set(car)
        
        return cell
    }
}

extension CarsListVC{
    func fetchData() -> [Car] {
        let cars = [ Car(image: Images.astonMartin, title:  "2019AstonMartinDBSSuperleggera"),
                     Car(image: Images.audi, title: "2020AudiRS6Avant"),
                     Car(image: Images.bently, title: "2020BentleyContinentalGTConvertible"),
                     Car(image: Images.bugatti, title: "2020BugattiChironSuperSport300"),
                     Car(image: Images.ferrari, title: "2020ferrariSF90Stradale"),
                     Car(image: Images.lambo, title: "2020LamborghiniAventadorSVJRoadster"),
                     Car(image: Images.mercedes, title: "2020MercedesAMGGT63SFourDoor"),
                     Car(image: Images.porshe, title: "2020PorscheTaycanMissionEConcept"),
                     Car(image: Images.volvo, title: "2020VolvoPolestar1"),
                     Car(image: Images.tesla, title: "Tesla-Roadster")
                     ]
        return cars
    }
}
