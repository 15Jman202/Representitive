//
//  RepCellTableViewCell.swift
//  Representitive
//
//  Created by Justin Carver on 8/29/16.
//  Copyright © 2016 Justin Carver. All rights reserved.
//

import UIKit

class RepCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NameLable: UILabel!
    @IBOutlet weak var PartyLable: UILabel!
    @IBOutlet weak var DistrictLable: UILabel!
    @IBOutlet weak var WebsiteLable: UILabel!
    @IBOutlet weak var PhoneNumberLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
