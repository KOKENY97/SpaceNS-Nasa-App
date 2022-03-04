//
//  StarsViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit
import Alamofire

class StarsViewController: UIViewController {
    
    @IBOutlet weak var outView: UIView!
    
    @IBOutlet weak var starTxtField: UITextField!
    @IBOutlet weak var galaxyTxtField: UITextField!
    @IBOutlet weak var massTxtField: UITextField!
    @IBOutlet weak var luminosityTxtField: UITextField!
    @IBOutlet weak var sizeTxtField: UITextField!
    
    @IBOutlet weak var registerStarButton: UIButton!
    @IBOutlet weak var queryStarButton: UIButton!
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outView.layer.cornerRadius = 40.0
        registerStarButton.layer.borderWidth = 1.0
        registerStarButton.layer.borderColor = UIColor.white.cgColor
        registerStarButton.layer.cornerRadius = 9.0
        
        queryStarButton.layer.borderWidth = 1.0
        queryStarButton.layer.borderColor = UIColor.white.cgColor
        queryStarButton.layer.cornerRadius = 9.0
        
        menuButton.layer.cornerRadius = 9.0
        
        
        
    }
    
    @IBAction func registerStarButtonPressed(_ sender: UIButton) {
        func postMethod() {
            
            let params: Parameters = [
                "starName": starTxtField.text!,
                "galaxyName": galaxyTxtField.text!,
                "mass": massTxtField.text!,
                "size": sizeTxtField.text!,
                "luminosity": luminosityTxtField.text!
            ]
            
            Alamofire.request("https://desafionasa.herokuapp.com/estrelas", method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseJSON { AFdata in
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
    
    @IBAction func queryStarButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "StarsToQuery", sender: true)
    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    
    
    
    
}
