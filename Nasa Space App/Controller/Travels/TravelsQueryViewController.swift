//
//  TravelsQueryViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit
import Alamofire

class TravelsQueryViewController: UIViewController {
    
    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var travelsTableView: UITableView!
    
    @IBOutlet weak var backButton: UIButton!
    
    var travels: [Travel] = []
    
    var token: Authentication!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        travelsTableView.dataSource = self
        travelsTableView.register(UINib(nibName: "TravelCell", bundle: nil), forCellReuseIdentifier: "TravelCell")

        travelsTableView.layer.cornerRadius = 40.0
        outView.layer.cornerRadius = 40.0
        
        backButton.layer.cornerRadius = 9.0
        
        getMethod()
        
    }
    
    func getMethod() {
        Alamofire.request("https://desafionasa.herokuapp.com/viagens?token=")
            .responseJSON { (response) in
                let decoder = JSONDecoder()
                let travels: [Travel] = try! decoder.decode([Travel].self, from: response.data!)
                
                self.travels = travels
                self.travelsTableView.reloadData()
                print(travels)
            }
    }
    

}

extension TravelsQueryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelCell", for: indexPath) as! TravelCell
        let travels = travels[indexPath.row]
        cell.configureCell(travels: travels)
        return cell
    }
    
    
}
