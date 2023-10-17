//
//  Location.swift
//  weatherApp
//
//  Created by Prince Jeetan on 06/10/2023.
//

import Foundation

class Location: Codable{
    var generationtime_ms: Double
    var results: [City]?
}
