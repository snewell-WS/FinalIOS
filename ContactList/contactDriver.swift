//
//  contactDriver.swift
//  ContactList
//
//  Created by Sean Newell on 12/7/22.
//

import Foundation


struct Contact: Codable, Identifiable{
    var id = UUID()
    var name: String
    var phoneNumber: String
    var email: String
    var birthday: Date
    var address: String?
    
    
    private enum CodingKeys: String, CodingKey {
        case name, phoneNumber, email, birthday, address
    }
}

struct Contacts: Codable{
    var status: String
    var contacts: [Contact]
}
