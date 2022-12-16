//
//  MapDataModel.swift
//  Vision
//
//  Created by Denys on 12/16/22.
//

import Foundation
import CoreLocation

struct MapDataModel: Codable {
    let kef: Double
    let coordinates: [Coordinate]
}

struct Coordinate: Codable {
    let latitude, longitude: Double
}
