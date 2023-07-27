//
//  ContactRow.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import SwiftUI

struct ContactRow: View {
    var imageName: String
    let name: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(name).foregroundColor(.black)
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ContactRow(imageName: Contact.sampleData.imageName, name: Contact.sampleData.name)
            ContactRow(imageName: Contact.sampleData.imageName, name: Contact.sampleData.name)
            ContactRow(imageName: Contact.sampleData.imageName, name: Contact.sampleData.name)
        }
        
    }
}
