//
//  EducationTableViewCell.swift
//  MyBiography
//
//  Created by Aliona on 4/12/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit

class EducationTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var emblemImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
