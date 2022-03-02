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
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
