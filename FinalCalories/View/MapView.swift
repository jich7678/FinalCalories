//
//  Map.swift
//  FinalCalories
//
//  Created by Sam Chen on 11/2/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    var body: some View {
        Map {
            Marker("King Soopers (Boulder)", coordinate: .kingSoopersBoulder)
            Marker("King Soopers (Lafayette)", coordinate: .kingSoopersLafayette)
            Marker("Whole Foods", coordinate: .wholeFoods)
            Marker("Sprouts", coordinate: .sprouts)
            Marker("Safeway", coordinate: .safeway)
            Marker("Target", coordinate: .target)
            Marker("Walmart", coordinate: .walmart)
        }
    }
}

extension CLLocationCoordinate2D {
    static let kingSoopersBoulder = CLLocationCoordinate2D(latitude: 39.983521, longitude: -105.251671)
    static let kingSoopersLafayette = CLLocationCoordinate2D(latitude: 40.001630, longitude: -105.101770)
    static let wholeFoods = CLLocationCoordinate2D(latitude: 39.982979, longitude: -105.248444)
    static let sprouts = CLLocationCoordinate2D(latitude: 39.999000, longitude: -105.254530)
    static let safeway = CLLocationCoordinate2D(latitude: 40.000019, longitude: -105.234062)
    static let target = CLLocationCoordinate2D(latitude: 40.021426, longitude: -105.25633)
    static let walmart = CLLocationCoordinate2D(latitude: 40.00966, longitude: -105.10251)
}

#Preview {
    MapView()
}
