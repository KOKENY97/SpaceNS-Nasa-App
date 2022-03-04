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
    }
    
    @IBAction func habitableButtonPressed(_ sender: UIButton) {
        if habitableButton.isSelected == false {
            habitableButton.isSelected = true
            habitable = "YES"
            habitableButton.backgroundColor = .blue
        } else {
            habitableButton.isSelected = false
            habitable = "NO"
            habitableButton.backgroundColor = .white
        }
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        func postMethod() {
            
            let params: Parameters = [
                "planetName": planetNameTxtField.text!,
                "starName": starNameTxtField.text!,
                "mass": massTxtField.text!,
                "size": sizeTxtField.text!,
                "habitable": habitable
                
            ]
            
            
            Alamofire.request("https://desafionasa.herokuapp.com/planetas", method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseJSON { AFdata in
                do {
                    guard let jsonObject = try JSONSerialization.jsonObject(with: AFdata.data!) as? [String: Any] else {
                        print("Error: Cannot convert data to JSON object")
                        return
                    }
                    guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                        print("Error: Cannot convert JSON object to Pretty JSON data")
                        return
                    }
                    guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                        print("Error: Could print JSON in String")
                        return
                    }
                    
                    print(prettyPrintedJson)
                } catch {
                    print("Error: Trying to convert JSON data to string")
                    return
                }
            }
            
        }
    }
    
    
    @IBAction func queryPlanetButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    
    
}
