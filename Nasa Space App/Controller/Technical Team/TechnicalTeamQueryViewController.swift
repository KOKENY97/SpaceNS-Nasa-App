//
//  TechnicalTeamQueryViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/4/22.
//

import UIKit
import Alamofire

class TechnicalTeamQueryViewController: UIViewController {

    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var peopleTableView: UITableView!
    
    @IBOutlet weak var techTeamButton: UIButton!
    @IBOutlet weak var passengersButton: UIButton!
    
    var techs: [TechTeam] = []
    
    var token: Authentication!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        outView.layer.cornerRadius = 40.0
        peopleTableView.layer.cornerRadius = 40.0
        
        peopleTableView.dataSource = self
        peopleTableView.register(UINib(nibName: "TechCell", bundle: nil), forCellReuseIdentifier: "TechCell")
        
        techTeamButton.layer.borderWidth = 1
        techTeamButton.layer.borderColor = UIColor.white.cgColor
        techTeamButton.layer.cornerRadius = 18.0
        
        getMethod()
        
                
    }
    
    @IBAction func techTeamButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func passengersButtonPressed(_ sender: UIButton) {
        
        
    }
    
    func getMethod() {
        Alamofire.request("https://desafionasa.herokuapp.com/tripulantes?token=")
            .responseJSON { (response) in
                let decoder = JSONDecoder()
                let techs: [TechTeam] = try! decoder.decode([TechTeam].self, from: response.data!)
                
                self.techs = techs
                self.peopleTableView.reloadData()
            }
    }
    
    
}

extension TechnicalTeamQueryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return techs.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TechCell", for: indexPath) as! TechCell
        let techs = techs[indexPath.row]
        cell.configureCell(techs: techs)
        return cell
    }
    
    
}


