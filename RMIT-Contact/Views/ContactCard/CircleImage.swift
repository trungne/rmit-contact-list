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
                .clipShape(Circle())
                .overlay(
                        RoundedRectangle(cornerRadius: 9999)
                            .stroke(.white, lineWidth: 4)
                    )
                .padding()
                .frame(width: 200, height: 200)
                
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: Contact.sampleData.imageName)
    }
}
