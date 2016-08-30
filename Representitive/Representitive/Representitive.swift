//
//  Representitive.swift
//  Representitive
//
//  Created by Justin Carver on 8/29/16.
//  Copyright © 2016 Justin Carver. All rights reserved.
//

import Foundation

class Representitive {
    
    private let kName = "name"
    private let kParty = "party"
    private let kState = "state"
    private let kDistrict = "district"
    private let kPhone = "phone"
    private let kOffice = "office"
    private let kLink = "link"
    
    let name: String
    let party: String
    let state: String
    let district: String
    let phone: String
    let office: String
    let link: String
    
    init?(dictionary: [String: AnyObject]) {
        
    guard let name = dictionary[kName] as? String,
        let party = dictionary[kParty] as? String,
        let state = dictionary[kState] as? String,
        let district = dictionary[kDistrict] as? String,
        let phone = dictionary[kPhone] as? String,
        let office = dictionary[kOffice] as? String,
        let link = dictionary[kLink] as? String
        
        else { return nil }
        
        self.name = name
        self.party = party
        self.state = state
        self.district = district
        self.phone = phone
        self.office = office
        self.link = link
    }
}