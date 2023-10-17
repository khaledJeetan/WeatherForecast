//
//  HourForecast.swift
//  weatherApp
//
//  Created by Prince Jeetan on 11/10/2023.
//

import Foundation

class HourForecast{
    var is_day: Int?
    var temperature: Int?
    var hour: String?
    var code: Int?
    
    init(is_day: Int? = nil, temperature: Int? = nil, hour: String? = nil, code: Int? = nil) {
        self.is_day = is_day
        self.temperature = temperature
        self.hour = hour
        self.code = code
    }
    
}
