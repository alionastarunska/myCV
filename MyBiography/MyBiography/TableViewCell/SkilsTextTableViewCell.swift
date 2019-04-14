//
//  SkilsTextTableViewCell.swift
//  MyBiography
//
//  Created by Aliona on 4/13/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit

class SkilsTextTableViewCell: UITableViewCell {

    @IBOutlet weak var informationLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
