//
//  PlanetsQueryViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit

class PlanetsQueryViewController: UIViewController {
    
    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var planetsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        planetsTableView.dataSource = self
        planetsTableView.register(UINib(nibName: "PlanetCell", bundle: nil), forCellReuseIdentifier: "PlanetCell")

        outView.layer.cornerRadius = 40.0
        planetsTableView.layer.cornerRadius = 40.0
    }
    


}

extension PlanetsQueryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as! PlanetCell
        cell.planetNameLbl.text = planets[indexPath.row].planetName
        cell.starNameLbl.text = planets[indexPath.row].starName
        cell.massLbl.text = planets[indexPath.row].mass
        cell.sizeLbl.text = planets[indexPath.row].size
        cell.habitableLbl.text = planets[indexPath.row].habitable
        return cell
    }
    
    
}
