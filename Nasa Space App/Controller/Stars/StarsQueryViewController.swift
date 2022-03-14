//
//  StarsQueryViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit
import Alamofire


class StarsQueryViewController: UIViewController {
    
    @IBOutlet weak var starsTableView: UITableView!
    @IBOutlet weak var outView: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    
    var stars: [Star] = []
    
    var token: Authentication!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starsTableView.dataSource = self
        starsTableView.register(UINib(nibName: "StarCell", bundle: nil), forCellReuseIdentifier: "StarCell")
        
        outView.layer.cornerRadius = 40.0
        starsTableView.layer.cornerRadius = 40.0
        
        backButton.layer.cornerRadius = 9.0
        
        getMethod()
        
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
    }
    
    func getMethod() {
        Alamofire.request("https://desafionasa.herokuapp.com/estrelas?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlQHRlc3RlLmNvbSIsImZ1bGxOYW1lIjoiS2lyayIsInNwYWNlQ3JhZnQiOiJmYWxjb245IiwiaWF0IjoxNjQ3MDkyNDkxLCJleHAiOjE2NDcxNzg4OTF9.o1YzO95tdp4-BBNnFSNGizWy-PmL3Ozc5bYN8sfw_JI")
            .responseJSON { (response) in
                let decoder = JSONDecoder()
                let stars: [Star] = try! decoder.decode([Star].self, from: response.data!)
                
                self.stars = stars
                self.starsTableView.reloadData()
            }
    }
    
}


extension StarsQueryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StarCell", for: indexPath) as! StarCell
        let stars = stars[indexPath.row]
        cell.configureCell(stars: stars)
        return cell
    }
    
    
}
