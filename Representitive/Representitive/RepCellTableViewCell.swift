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
    
    func updateWithReps(rep: Representitive) {
        NameLable.text = rep.name
        PartyLable.text = rep.party
        DistrictLable.text = "District \(rep.district)"
        WebsiteLable.text = rep.link
        PhoneNumberLable.text = rep.phone
    }
}
