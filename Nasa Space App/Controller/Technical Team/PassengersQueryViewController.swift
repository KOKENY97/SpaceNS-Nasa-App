//
//  PassengersQueryViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/4/22.
//

import UIKit
import Alamofire

class PassengersQueryViewController: UIViewController {
    
    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var peopleTableView: UITableView!
    
    @IBOutlet weak var techTeamButton: UIButton!
    @IBOutlet weak var passengersButton: UIButton!
    
    var passengers: [Passenger] = []
    
    var token: Authentication!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outView.layer.cornerRadius = 40.0
        peopleTableView.layer.cornerRadius = 40.0
        
        peopleTableView.dataSource = self
        peopleTableView.register(UINib(nibName: "PassengerCell", bundle: nil), forCellReuseIdentifier: "PassCell")
        
        passengersButton.layer.borderWidth = 1
        passengersButton.layer.borderColor = UIColor.white.cgColor
        passengersButton.layer.cornerRadius = 18.0
        
        getMethod()
    }
    
    
    @IBAction func techTeamButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func passengersButtonPressed(_ sender: UIButton) {
    }
    
    func getMethod() {
        Alamofire.request("https://desafionasa.herokuapp.com/passageiros/naves?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlQHRlc3RlLmNvbSIsImZ1bGxOYW1lIjoiS2lyayIsInNwYWNlQ3JhZnQiOiJmYWxjb245IiwiaWF0IjoxNjQ3MDkyNDkxLCJleHAiOjE2NDcxNzg4OTF9.o1YzO95tdp4-BBNnFSNGizWy-PmL3Ozc5bYN8sfw_JI")
            .responseJSON { (response) in
                let decoder = JSONDecoder()
                let passengers: [Passenger] = try! decoder.decode([Passenger].self, from: response.data!)
                
                self.passengers = passengers
                self.peopleTableView.reloadData()
                
                
            }
    }
    
    
}

extension PassengersQueryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passengers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PassCell", for: indexPath) as! PassengerCell
        let passengers = passengers[indexPath.row]
        cell.configureCell(passengers: passengers)
        return cell
    }
    
    
}
