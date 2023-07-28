//
//  ContactCard.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import SwiftUI

struct ContactCard: View {
    var contact: Contact
    
    var body: some View {
        VStack {
            CircleImage(imageName: contact.imageName)
            Text(contact.name)
                .font(.title)
                .foregroundColor(.white)
                .bold()
            
            Image("fifa-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
            
            InfoView(text: contact.email, sfImageName: "envelope.fill", link: "mailto:\(contact.email)")
            
            InfoView(text: contact.phone, sfImageName: "phone.fill", link: "tel:\(contact.phone)")
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(contact: Contact.sampleData)
    }
}
