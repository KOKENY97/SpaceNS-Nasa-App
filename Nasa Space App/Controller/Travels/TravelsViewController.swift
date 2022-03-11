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
        func postMethod() {
            
            let params: Parameters = [
                "planetName": planeTxtField.text!,
                "duration": Float(durationTxtField.text!)!,
                "distance": Float(distanceTxtField.text!)!,
                "spacecraft": spacecraftTxtField.text!,
            ]
            
            Alamofire.request("http://desafionasa.herokuapp.com/viagens", method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseJSON { AFdata in
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
    
    @IBAction func travelQueryButton(_ sender: UIButton) {
    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    
    
}
