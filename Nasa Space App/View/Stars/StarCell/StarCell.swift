//
//  StarCell.swift
//  Nasa Space App
//
//  Created by user209843 on 3/1/22.
//

import UIKit

class StarCell: UITableViewCell {
    
    @IBOutlet weak var starNameLbl: UILabel!
    @IBOutlet weak var galaxyLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var sizeLbl: UILabel!
    @IBOutlet weak var luminosityLbl: UILabel!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var stars: Star!

    func configureCell(stars: Star) {
        self.stars = stars
        starNameLbl.text = self.stars.starName
        galaxyLbl.text = self.stars.galaxyName
        massLbl.text = "\(self.stars.mass)"
        sizeLbl.text = "\(self.stars.size)"
        luminosityLbl.text = self.stars.luminosity
    }

}

