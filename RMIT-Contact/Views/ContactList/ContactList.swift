//
//  ContactList.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import SwiftUI

struct ContactList: View {
    @StateObject
    var contactStore = ContactStore()
    
    var body: some View {
        NavigationView {
            List(contactStore.contacts){
                contact in
                NavigationLink{
                    ContactCard(contact: contact)
                } label: {
                    ContactRow(imageName: contact.imageName, name: contact.name)
                }
                .navigationTitle("Footballer Contacts")
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
