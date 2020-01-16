//
//  MYTableViewCell.swift
//  MyCoreData
//
//  Created by COE-008 on 09/01/20.
//  Copyright © 2020 COE-008. All rights reserved.
//

import UIKit

class MYTableViewCell: UITableViewCell {

    @IBOutlet weak var firstname: UILabel!
    
    @IBOutlet weak var lastname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
