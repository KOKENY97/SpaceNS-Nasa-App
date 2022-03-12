//
//  TravelCell.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit

class TravelCell: UITableViewCell {
    
    
    @IBOutlet weak var planetNameLBl: UILabel!
    @IBOutlet weak var spacecraftNameLbl: UILabel!
    @IBOutlet weak var durationLbl: UILabel!
    @IBOutlet weak var distanceLbl: UILabel!
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var travels: Travel!

    func configureCell(travels: Travel) {
        self.travels = travels
        planetNameLBl.text = self.travels.planetName
        spacecraftNameLbl.text = self.travels.spaceCraft
        durationLbl.text = "\(self.travels.duration)"
        distanceLbl.text = "\(self.travels.distance)"
    }
    
}
