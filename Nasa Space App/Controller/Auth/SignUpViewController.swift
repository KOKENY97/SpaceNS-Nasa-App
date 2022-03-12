
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
    
    var passenger: Passenger!
    
    var token: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.cornerRadius = 8.0
    }
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        let params: [String:Any?] = [
            "fullName": nameTxtField.text,
            "birthDate": dateTxtField.text,
            "sex": sexTxtField.text,
            "profession": professionTxtField.text,
            "email": emailTxtField.text,
            "password": passTxtField.text,
            "spaceCraft": spacecraftTxtField.text,
           
        ]
        
        //POST Transfer Data
        guard let url = URL(string: "https://desafionasa.herokuapp.com/passageiros") else { return
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
        
        performSegue(withIdentifier: "SignUpToSettings", sender: true)
    }
    
    
    
    
}
