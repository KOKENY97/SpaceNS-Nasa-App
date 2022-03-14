//
//  PlanetsViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit
import Alamofire

class PlanetsViewController: UIViewController {
    
    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var planetNameTxtField: UITextField!
    @IBOutlet weak var massTxtField: UITextField!
    @IBOutlet weak var sizeTxtField: UITextField!
    @IBOutlet weak var habitableButton: UIButton!
    @IBOutlet weak var starNameTxtField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var queryPlanetButton: UIButton!
    @IBOutlet weak var menuButton: UIButton!
    
    var habitable = String()
    
    var token: Authentication!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.white.cgColor
        registerButton.layer.cornerRadius = 9.0
        
        queryPlanetButton.layer.borderWidth = 1
        queryPlanetButton.layer.borderColor = UIColor.white.cgColor
        queryPlanetButton.layer.cornerRadius = 9.0
        
        outView.layer.cornerRadius = 40.0
        habitableButton.layer.cornerRadius = 12.5
        
        menuButton.layer.cornerRadius = 9.0
        
        habitableButton.isSelected = false
        habitable = "N"
    }
    
    @IBAction func habitableButtonPressed(_ sender: UIButton) {
        if  habitableButton.isSelected == true {
            habitableButton.isSelected = false
            habitable = "N"
            habitableButton.backgroundColor = .white
            
        } else {
            habitableButton.isSelected = true
            habitable = "S"
            habitableButton.backgroundColor = .blue
        }
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        let params: [String:Any?] = [
            "planetName": planetNameTxtField.text,
            "mass": massTxtField.text,
            "starName": starNameTxtField.text,
            "size": sizeTxtField.text,
            "habitable": habitable
        ]
        
        //POST Transfer Data
        guard let url = URL(string: "https://desafionasa.herokuapp.com/planetas?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlQHRlc3RlLmNvbSIsImZ1bGxOYW1lIjoiS2lyayIsInNwYWNlQ3JhZnQiOiJmYWxjb245IiwiaWF0IjoxNjQ3MDkyNDkxLCJleHAiOjE2NDcxNzg4OTF9.o1YzO95tdp4-BBNnFSNGizWy-PmL3Ozc5bYN8sfw_JI") else { return
        }
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        
        let session = URLSession.shared.dataTask(with: request) { data, response, error in
            if let e = error {
                print(e.localizedDescription)
            } else {
                let jsonRes = try? JSONSerialization.jsonObject(with: data!, options: [])
                print(jsonRes ?? nil)
            }
        }.resume()
        
        
        
        performSegue(withIdentifier: "PlanetToQuery", sender: true)
        
    }
    
    
    @IBAction func queryPlanetButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    
    
}
