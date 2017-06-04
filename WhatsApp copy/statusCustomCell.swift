//
//  statusCustomCell.swift
//  WhatsApp copy
//
//  Created by Ayush Verma on 04/06/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class statusCustomCell: UITableViewCell {
    
    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
