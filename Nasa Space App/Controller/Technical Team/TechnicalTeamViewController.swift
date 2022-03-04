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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpButton.layer.cornerRadius = 9.0
        queryPeopleButton.layer.cornerRadius = 9.0

        
    }

    @IBAction func signUpButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func queryPeopleButtonPressed(_ sender: UIButton) {
    }
    
    
}
