//
//  contactLoader.swift
//  ContactList
//
//  Created by Sean Newell on 12/7/22.
//

import Foundation


class contactLoader{
    
    class func load(jsonFileName:String) -> Contacts?{
        var contacts: Contacts?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonURL = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonURL){
            contacts = try? jsonDecoder.decode(Contacts.self, from: jsonData)
        }
            
        return contacts
    }
}
