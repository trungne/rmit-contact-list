//
//  CircleImage.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(
                    Circle()
                )
                
                .overlay(
                    Circle()
                        .stroke(.white, lineWidth: 4)
                )
                .padding()
                .frame(width: 200, height: 200)
                
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CircleImage(imageName: Contact.sampleData.imageName)
        }.background(.gray)
        
    }
}
