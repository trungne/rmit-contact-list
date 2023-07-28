//
//  Contact.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import Foundation
import SwiftUI
import CoreLocation


struct Contact: Identifiable, Codable {
    static var sampleData = Contact(id: 1,
                                    name: "Lionel Messi",
                                    email: "lionel.messi@email.com",
                                    phone: "012345678",
                                    imageName: "lionel-messi",
                                    coordinates: Coordinates.sampleData)
    
    let id: Int
    let name: String
    let email: String
    let phone: String

    let imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

