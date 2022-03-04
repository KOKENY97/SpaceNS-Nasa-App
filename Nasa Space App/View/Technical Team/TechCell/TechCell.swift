//
//  TechCell.swift
//  Nasa Space App
//
//  Created by user209843 on 3/4/22.
//

import UIKit

class TechCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var sexLbl: UILabel!
    @IBOutlet weak var professionLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var supervisoLbl: UILabel!
    @IBOutlet weak var spacecraftLbl: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var techs: TechTeam!

    func configureCell(techs: TechTeam) {
        self.techs = techs
        nameLbl.text = self.techs.fullName
        dateLbl.text = self.techs.birthDate
        sexLbl.text = self.techs.sex
        professionLbl.text = self.techs.specialization
        emailLbl.text = self.techs.email
        supervisoLbl.text = self.techs.supervisorsEmail
        spacecraftLbl.text = self.techs.spaceCraft
    }
    
}
