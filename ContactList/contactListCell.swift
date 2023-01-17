//
//  contactListCell.swift
//  ContactList
//
//  Created by Sean Newell on 12/7/22.
//

import SwiftUI


struct contactListCell: View {
    
    var contact: Contact
    let dateFormatter = DateFormatter()
    init(contact:Contact)
    {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        self.contact = contact
    }
    
    
    var body: some View
    {
        VStack
        {
            HStack
            {
            
                Image("contactImage").resizable().frame(width: 32.0, height: 32.0).clipShape( Circle()).overlay(Circle().stroke(Color(hue: 0.0, saturation: 0.0, brightness: 0.5), lineWidth: 1))
                
                Spacer().frame(width: 13)

                Text(contact.name).font(.system(size: 23))
            }
        }
    }
    
    }

struct contactListCell_Previews: PreviewProvider {
    static var previews: some View {
        contactListCell(contact: Contact(name: "Darrick", phoneNumber:"7277232332", email: "spom@msje.com", birthday: Date(), address:"sd"))
    }
}
