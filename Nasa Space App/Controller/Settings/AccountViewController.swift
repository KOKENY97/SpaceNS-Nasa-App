//
//  AccountViewController.swift
//  Nasa Space App
//
//  Created by user209843 on 2/28/22.
//

import UIKit
import Alamofire

class AccountViewController: UIViewController {

    @IBOutlet weak var outView: UIView!
    @IBOutlet weak var innerView: UIView!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var sexLbl: UILabel!
    @IBOutlet weak var professionLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var spacecraftLbl: UILabel!
    
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outView.layer.cornerRadius = 38.0
        innerView.layer.cornerRadius = 38.0
        
        menuButton.layer.cornerRadius = 8.0
        
       
        
    }
    

    @IBAction func menuButtonPressed(_ sender: UIButton) {
    }
    
    
}
