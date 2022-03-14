//
//  TravelsViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit
import Alamofire


class TravelsViewController: UIViewController {
    
    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var planeTxtField: UITextField!
    @IBOutlet weak var durationTxtField: UITextField!
    @IBOutlet weak var distanceTxtField: UITextField!
    @IBOutlet weak var spacecraftTxtField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var travelQueryButton: UIButton!
    @IBOutlet weak var menuButton: UIButton!
    
    var token: Authentication!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outView.layer.cornerRadius = 40.0
        
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.white.cgColor
        registerButton.layer.cornerRadius = 9.0
        
        travelQueryButton.layer.borderWidth = 1
        travelQueryButton.layer.borderColor = UIColor.white.cgColor
        travelQueryButton.layer.cornerRadius = 9.0
        
        menuButton.layer.cornerRadius = 9.0
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        let params: [String:Any?] = [
            "planetName": planeTxtField.text,
            "duration": durationTxtField.text,
            "distance": durationTxtField.text,
            "spaceCraft": spacecraftTxtField.text
            
        ]
        
        //POST Transfer Data
        guard let url = URL(string: "https://desafionasa.herokuapp.com/viagens?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlQHRlc3RlLmNvbSIsImZ1bGxOYW1lIjoiS2lyayIsInNwYWNlQ3JhZnQiOiJmYWxjb245IiwiaWF0IjoxNjQ3MDkyNDkxLCJleHAiOjE2NDcxNzg4OTF9.o1YzO95tdp4-BBNnFSNGizWy-PmL3Ozc5bYN8sfw_JI") else { return
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
        
        
        
        performSegue(withIdentifier: "TravelToQuery", sender: true)
        
    }
    
    @IBAction func travelQueryButton(_ sender: UIButton) {
    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    
    
}
