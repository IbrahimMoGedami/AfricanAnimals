//
//  Location.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 13/02/2022.
//

import Foundation
import MapKit

// MARK: - Location
struct Location: Codable , Identifiable{
    let id, name, image: String
    let latitude, longitude: Double
    // Computed Property
    var location: CLLocationCoordinate2D {
      CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
