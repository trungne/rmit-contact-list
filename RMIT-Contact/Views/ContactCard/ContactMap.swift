//
//  ContactMap.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import SwiftUI
import MapKit

struct ContactMap: View {
    var coordinate: CLLocationCoordinate2D
    
    @Environment(\.dismiss)
    var dismiss
    
    @State private var region = MKCoordinateRegion()

    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
            Button("Cancel", action: {
                dismiss()
            })
            
        }.onAppear {
            setRegion(coordinate)
        }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        )
    }
}

struct ContactMap_Previews: PreviewProvider {
    static var previews: some View {
        ContactMap(coordinate: Contact.sampleData.locationCoordinate)
    }
}
