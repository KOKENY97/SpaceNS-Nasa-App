//
//  StarsViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit

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
    }
    
    @IBAction func queryStarButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "StarsToQuery", sender: true)
    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    

   

}
