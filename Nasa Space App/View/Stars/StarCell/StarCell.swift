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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
