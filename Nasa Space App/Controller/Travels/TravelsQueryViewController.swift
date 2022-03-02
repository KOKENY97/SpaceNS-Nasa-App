//
//  TravelsQueryViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit

class TravelsQueryViewController: UIViewController {
    
    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var travelsTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        travelsTableView.dataSource = self
        travelsTableView.register(UINib(nibName: "TravelCell", bundle: nil), forCellReuseIdentifier: "TravelCell")

        travelsTableView.layer.cornerRadius = 40.0
        outView.layer.cornerRadius = 40.0
    }
    

}

extension TravelsQueryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelCell", for: indexPath) as! TravelCell
        cell.planetNameLBl.text = travels[indexPath.row].planetName
        cell.spacecraftNameLbl.text = travels[indexPath.row].spacecraftName
        cell.durationLbl.text = travels[indexPath.row].duration
        cell.distanceLbl.text = travels[indexPath.row].distance
        return cell
    }
    
    
}
