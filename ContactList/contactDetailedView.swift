//
//  contactDetailedView.swift
//  ContactList
//
//  Created by Sean Newell on 12/7/22.
//

import SwiftUI


struct contactDetailedView: View {
    let contact: Contact
    let dateFormatter = DateFormatter()
    init(contact:Contact)
    {
        dateFormatter.dateStyle = .medium

        self.contact = contact
    }
    
    
    
    var body: some View {
        
        VStack(alignment: .leading)
        {
            HStack
            {
                VStack
                {
                    Image("contactImage").resizable().frame(width: 72.0, height: 72.0).clipShape( Circle()).overlay(Circle().stroke(Color(hue: 0.0, saturation: 0.0, brightness: 0.5), lineWidth: 1))
                
                }
                VStack
                {
                    Text(contact.name).font(.system(size: 22.0))
                }
                
            }
            
           
            HStack()
            {
                Image("phone").resizable().frame(width:30, height:30)
                Text("Phone Number: " + String(contact.phoneNumber)).font(.system(size: 18.0))
                //Image should be much smaller then Placeholder UserImage
                
            }.padding()
            Divider()
            Spacer().frame(height:10)
            HStack
            {
                Image("mail").resizable().frame(width:30, height:30)
                Text("Email Address: " + contact.email).font(.system(size: 18.0))
            }.padding()
            Divider()
            HStack
            {   //optional value for Address if there is no value to address given
                Image("address").resizable().frame(width:30, height:30)
                Text("Address: " + (contact.address ?? "")).font(.system(size: 18.0))
            }.padding()
            Divider()
            
            HStack
            {
                Image("birthday").resizable().frame(width:30, height:30)
                Text("Birthday: " + dateFormatter.string(from: contact.birthday)).font(.system(size: 18.0))
                
            }.padding()
            Divider()
            
        }
        Spacer().frame(height: 300)
       

    }
}

struct contactDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        contactDetailedView(contact: Contact(name: "Darrick", phoneNumber:"7277232332", email: "spom@msje.com", birthday: Date(), address: ""))
    }
}
