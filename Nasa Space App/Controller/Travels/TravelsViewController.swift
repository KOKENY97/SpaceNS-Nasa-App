//
//  TravelsViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit

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
    }
    
    @IBAction func travelQueryButton(_ sender: UIButton) {
    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    

}
