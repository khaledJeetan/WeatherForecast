//
//  CurrentWeather.swift
//  weatherApp
//
//  Created by Prince Jeetan on 06/10/2023.
//

import Foundation


class CurrentWeather: Codable{
    
    var is_day: Int
    var temperature: Double
    var time: String
    var weathercode: Int
    var winddirection: Int
    var windspeed: Double
}
