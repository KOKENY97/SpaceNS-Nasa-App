//
//  SpacecraftViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/5/22.
//

import UIKit
import Foundation
import Alamofire


class SpacecraftViewController: UIViewController {
    
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var rocketNameLbl: UILabel!
    @IBOutlet weak var crewNumberLbl: UILabel!
    @IBOutlet weak var passengerNumberLbl: UILabel!
    @IBOutlet weak var launchsiteLbl: UILabel!
    @IBOutlet weak var detailsLbl: UILabel!
    @IBOutlet weak var firstStageLbl: UILabel!
    @IBOutlet weak var secondStageLbl: UILabel!
    
    @IBOutlet weak var youtubeButton: UIButton!
    @IBOutlet weak var redditButton: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var spacecraft: Spacecraft!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        youtubeButton.layer.cornerRadius = 9.0
        redditButton.layer.cornerRadius = 9.0
        
        collectionView.dataSource = self
        
        getMethod()
        
        collectionView.backgroundColor = UIColor.clear
        
        
        
    }
    
    @IBAction func youtubeButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func redditButtonPressed(_ sender: UIButton) {
    }
    
    func getMethod() {
        Alamofire.request("https://desafionasa.herokuapp.com/naves")
            .responseJSON { (response) in
                let decoder = JSONDecoder()
                let spacecraft: Spacecraft = try! decoder.decode(Spacecraft.self, from: response.data!)
                self.spacecraft = spacecraft
                
                DispatchQueue.main.async {
                    self.rocketNameLbl.text = spacecraft.rocket
                    
                    if let imgURL = URL(string: "https://images2.imgbox.com/ef/39/FyZRYeOh_o.png") {
                        do {
                            let data = try Data(contentsOf: imgURL)
                            self.logoView.image = UIImage(data: data)
                        } catch let error {
                            print(error)
                        }
                    }
                    
                    self.crewNumberLbl.text = "\(spacecraft.Crew)"
                    self.passengerNumberLbl.text = "\(spacecraft.passengers)"
                    self.launchsiteLbl.text = spacecraft.launch
                    self.detailsLbl.text = spacecraft.details
                    self.firstStageLbl.text = spacecraft.first_stage
                    self.secondStageLbl.text = "\(spacecraft.second_stage)"
                    
                    print(spacecraft)
                }
                
            }
    }
    
}

extension SpacecraftViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpacecraftCell", for: indexPath) as! SpacecraftCell
        return cell

    }


}


