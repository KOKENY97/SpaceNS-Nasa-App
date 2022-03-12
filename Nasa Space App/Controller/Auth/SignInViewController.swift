//
//  SignInViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit
import Alamofire

class SignInViewController: UIViewController {
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passtxtField: UITextField!
    
    var token: Authentication!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInButton.layer.cornerRadius = 8
        
        
    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
        
        let params: Parameters = [
            "email": emailTxtField.text,
            "password": passtxtField.text,
            
            
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
                let decoder = JSONDecoder()
                let token: Authentication = try! decoder.decode(Authentication.self, from: AFdata.data!)
                
                self.token = token
                print(token)
                
            } catch {
                print("Error: Trying to convert JSON data to string")
                return
            }
        }
        
        //        //POST Transfer Data
        //        guard let url = URL(string: "https://desafionasa.herokuapp.com/autenticacao") else { return
        //        }
        //
        //        var request = URLRequest(url: url)
        //
        //        request.httpMethod = "POST"
        //
        //        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        //        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        //
        //        let session = URLSession.shared.dataTask(with: request) { data, response, error in
        //            if let e = error {
        //                print(e.localizedDescription)
        //            } else {
        //                if let jsonRes = data {
        //                    self.parseJSON(result: jsonRes)
        //
        //
        //
        //                }
        //
        //
        //
        //            }
        //        }.resume()
        
        performSegue(withIdentifier: "SignInToSettings", sender: true)
        
        
    }
    
    func parseJSON(result: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try! decoder.decode(Authentication.self, from: result)
            print(decodedData)
            token = decodedData
            
            
        } catch {
            print(error)
        }
        
        
        
    }
    
    
    
    
    
}



