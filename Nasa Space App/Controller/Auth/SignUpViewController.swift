//
//  SignUpViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit

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
        performSegue(withIdentifier: "SignUpToSettings", sender: true)
    }
    

}
