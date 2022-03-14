//
//  PlanetsQueryViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit
import Alamofire

class PlanetsQueryViewController: UIViewController {
    
    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var planetsTableView: UITableView!
    
    @IBOutlet weak var backButton: UIButton!
    
    var planets: [Planet] = []
    
    var token: Authentication!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        planetsTableView.dataSource = self
        planetsTableView.register(UINib(nibName: "PlanetCell", bundle: nil), forCellReuseIdentifier: "PlanetCell")

        outView.layer.cornerRadius = 40.0
        planetsTableView.layer.cornerRadius = 40.0
        
        backButton.layer.cornerRadius = 9.0
        
        getMethod()
    }
    
    func getMethod() {
        Alamofire.request("https://desafionasa.herokuapp.com/planetas?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlQHRlc3RlLmNvbSIsImZ1bGxOYW1lIjoiS2lyayIsInNwYWNlQ3JhZnQiOiJmYWxjb245IiwiaWF0IjoxNjQ3MDkyNDkxLCJleHAiOjE2NDcxNzg4OTF9.o1YzO95tdp4-BBNnFSNGizWy-PmL3Ozc5bYN8sfw_JI")
            .responseJSON { (response) in
                let decoder = JSONDecoder()
                let planets: [Planet] = try! decoder.decode([Planet].self, from: response.data!)
                
                self.planets = planets
                self.planetsTableView.reloadData()
            }
    }
    


}

extension PlanetsQueryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as! PlanetCell
        let planets = planets[indexPath.row]
        cell.configureCell(planets: planets)
        return cell
    }
    
    
}
