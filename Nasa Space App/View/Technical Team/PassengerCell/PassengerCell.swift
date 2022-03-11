//
//  PassengerCell.swift
//  Nasa Space App
//
//  Created by user209843 on 3/4/22.
//

import UIKit

class PassengerCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var sexLbl: UILabel!
    @IBOutlet weak var professionLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var spacecraftLbl: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var passengers: Passenger!
    
    func configureCell(passengers: Passenger) {
        
        self.passengers = passengers
        nameLbl.text = self.passengers.fullName
        dateLbl.text = self.passengers.birthDate
        sexLbl.text = self.passengers.sex
        professionLbl.text = self.passengers.profession
        emailLbl.text = self.passengers.email
        spacecraftLbl.text = self.passengers.spaceCraft
        
        if professionLbl.text == nil {
            professionLbl.isHidden = true
            
        }
        
        
    }
    
}
