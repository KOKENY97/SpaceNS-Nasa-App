//
//  WelcomeViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signInButton.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
        registerButton.layer.borderWidth = 1.5
        registerButton.layer.borderColor = UIColor.white.cgColor 
    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
    }

    @IBAction func registerButtonPressed(_ sender: Any) {
    }
    
    
}
