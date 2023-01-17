//
//  ErrorView.swift
//  ContactList
//
//  Created by Sean Newell on 12/10/22.
//

import SwiftUI

struct ErrorView: View {
    var message = ""
    init(message: String) {
        self.message = message
    }
    
    var body: some View {
        Text(message)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(message: "In Preview")
    }
}
