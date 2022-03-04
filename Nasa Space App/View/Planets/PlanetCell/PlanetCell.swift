//
//  PlanetCell.swift
//  Nasa Space App
//
//  Created by user209843 on 3/2/22.
//

import UIKit

class PlanetCell: UITableViewCell {
    
    
    @IBOutlet weak var planetNameLbl: UILabel!
    @IBOutlet weak var starNameLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var sizeLbl: UILabel!
    @IBOutlet weak var habitableLbl: UILabel!
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var planets: Planet!

    func configureCell(planets: Planet) {
        self.planets = planets
        planetNameLbl.text = self.planets.planetName
        starNameLbl.text = self.planets.starName
        massLbl.text = "\(self.planets.mass)"
        sizeLbl.text = "\(self.planets.size)"
        habitableLbl.text = self.planets.habitable
    }
    
}
