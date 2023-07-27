//
//  Coordinate.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import Foundation

struct Coordinates: Codable {
    static var sampleData = Coordinates(latitude: 10.729410965174186, longitude: 106.69522548892152)
    var latitude: Double
    var longitude: Double
}


