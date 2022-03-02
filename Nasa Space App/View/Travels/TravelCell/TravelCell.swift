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
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
