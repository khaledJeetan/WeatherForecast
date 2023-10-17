//
//  Weather.swift
//  weatherApp
//
//  Created by Prince Jeetan on 01/10/2023.
//

import Foundation


// use coadable to parse JSON
// use different names 

class Weather: Codable {
    
    var latitude: Double?
    var longitude: Double?
    var generationtime_ms: Double?
    var utc_offset_seconds: Int?
    var timezone: String?
    var timezone_abbreviation: String?
    var elevation: Int?
    var current_weather_interval_seconds: Int?
    
    var current_weather_units: CurrentWeatherUnits?
    var current_weather: CurrentWeather?
    
    var daily_units: DailyUnits?
    var daily: Daily?
    var hourly: Hourly?
    var hourly_units: HourlyUnits?
    
    
    
}
