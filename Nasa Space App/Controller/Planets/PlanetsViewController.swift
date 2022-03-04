//
//  PlanetsViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit

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
            habitableButton.backgroundColor = .blue
        } else {
            habitableButton.isSelected = false
            habitableButton.backgroundColor = .white
        }
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func queryPlanetButtonPressed(_ sender: UIButton) {
    }
    
   
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    

}
