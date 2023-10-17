//
//  City.swift
//  weatherApp
//
//  Created by Prince Jeetan on 06/10/2023.
//

import Foundation

class City: Codable, Equatable{


    // no need to comparre all attributes ==> ID 
    static func == (lhs: City, rhs: City) -> Bool {
        return lhs.id == rhs.id
    }
    // all shoud be optional
    var admin1: String
    var admin1_id: Int
    var admin2: String?
    var admin2_id: Int?
    var country_code: String
    var elevation: Int
    var feature_code: String
    var country_id: Int?
    var country:String?
    var id: Int
    var latitude: Double
    var longitude: Double
    var name: String
    var population: Int?
    var timezone: String
}

