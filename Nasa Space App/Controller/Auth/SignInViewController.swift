//
//  SignInViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passtxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signInButton.layer.cornerRadius = 8
        
    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "SignInToSettings", sender: true)
    }
    
   

}
