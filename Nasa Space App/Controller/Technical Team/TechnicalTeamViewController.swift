//
//  TechnicalTeamViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/4/22.
//

import UIKit

class TechnicalTeamViewController: UIViewController {
    
    
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var dateTxtField: UITextField!
    @IBOutlet weak var sexTxtField: UITextField!
    @IBOutlet weak var specializationTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passTxtField: UITextField!
    @IBOutlet weak var spacecrafttxtField: UITextField!
    @IBOutlet weak var superEmailTxtField: UITextField!
    

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var queryPeopleButton: UIButton!
    
    var token: Authentication!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpButton.layer.cornerRadius = 9.0
        queryPeopleButton.layer.cornerRadius = 9.0

        
    }

    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        let params: [String:Any?] = [
            "fullName": nameTxtField.text,
            "birthDate": dateTxtField.text,
            "sex": sexTxtField.text,
            "specialization": specializationTxtField.text,
            "email": emailTxtField.text,
            "password": passTxtField.text,
            "spaceCraft": spacecrafttxtField.text,
            "supervisorsEmail": superEmailTxtField.text
        ]
        
        //POST Transfer Data
        guard let url = URL(string: "https://desafionasa.herokuapp.com/tripulantes?token=") else { return
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
        
        
        
        performSegue(withIdentifier: "TechToQuery", sender: true)
    }
    
    @IBAction func queryPeopleButtonPressed(_ sender: UIButton) {
    }
    
    
}
