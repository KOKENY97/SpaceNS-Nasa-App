//
//  StarsQueryViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit

class StarsQueryViewController: UIViewController {

    @IBOutlet weak var starsTableView: UITableView!
    @IBOutlet weak var outView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starsTableView.dataSource = self
        starsTableView.register(UINib(nibName: "StarCell", bundle: nil), forCellReuseIdentifier: "StarCell")
        
        outView.layer.cornerRadius = 40.0
        starsTableView.layer.cornerRadius = 40.0

        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
    }
    

}

extension StarsQueryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StarCell", for: indexPath) as! StarCell
        cell.starNameLbl.text = stars[indexPath.row].starName
        cell.galaxyLbl.text = stars[indexPath.row].galaxyName
        cell.massLbl.text = stars[indexPath.row].mass
        cell.sizeLbl.text = stars[indexPath.row].size
        cell.luminosityLbl.text = stars[indexPath.row].luminosity
        return cell
    }
    
    
}
