//
//  InfoView.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import SwiftUI

struct InfoView: View {
    var text: String
    var sfImageName: String
    var link: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: sfImageName)
                    .foregroundColor(.blue)
                
                if let url = URL(string: link) {
                    Link(destination: url) {
                        Text(text)
                            .foregroundColor(.black)
                    }
                }
            })
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InfoView(text: Contact.sampleData.email,
                     sfImageName: "phone.fill",
                     link: "tel:12345213")
            
            InfoView(text: Contact.sampleData.phone,
                     sfImageName: "envelope.fill",
                     link: "mailto:email@gmail.com")
        }
        
    }
}
