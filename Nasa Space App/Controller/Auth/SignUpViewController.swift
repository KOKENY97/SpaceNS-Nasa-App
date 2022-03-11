//
//  SignUpViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit
import Alamofire


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var dateTxtField: UITextField!
    @IBOutlet weak var sexTxtField: UITextField!
    @IBOutlet weak var professionTxtField: UITextField!
    @IBOutlet weak var spacecraftTxtField: UITextField!
    
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passTxtField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerButton.layer.cornerRadius = 8.0
    }
    

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        func postMethod() {
            
            let params: Parameters = [
                //"birthDate": dateTxtField.text!,
                //"fullName": nameTxtField.text!,
                //"sex": sexTxtField.text!,
                //"profession": professionTxtField.text!,
                "email": emailTxtField.text!,
                //"spaceCraft": spacecraftTxtField.text!,
                "password": passTxtField.text!
                
            ]
            
            Alamofire.request("https://desafionasa.herokuapp.com/autenticacao", method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseJSON { AFdata in
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
        
        performSegue(withIdentifier: "SignUpToSettings", sender: true)
    }
    

}
