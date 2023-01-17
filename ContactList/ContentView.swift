//
//  ContentView.swift
//  ContactList
//
//  Created by Sean Newell on 12/7/22.
//

import SwiftUI





struct ContentView: View {
    
    var contactInfo: Contacts?
    let jsonFile = "contacts"

    let dateFormatter = DateFormatter()

    init(){
        dateFormatter.dateStyle = .medium
        self.contactInfo = contactLoader.load(jsonFileName: jsonFile)
    }
    
    
    
    
    
    var body: some View {
        guard let contactInfo = self.contactInfo else {
            return AnyView(ErrorView(message: "Contact data is unavailable."))
        }
        
        return AnyView(buildList(contactInfo: contactInfo.contacts))
    }
    
    func buildList(contactInfo: [Contact]) -> some View
    {
        return NavigationView(){
            List(contactInfo){
                contactInfo in
                NavigationLink(destination: contactDetailedView(contact: contactInfo)){
                    contactListCell(contact: contactInfo)
                }
            }.navigationBarTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
