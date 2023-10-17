//
//  Constants.swift
//  weatherApp
//
//  Created by Prince Jeetan on 10/10/2023.
//

import Foundation

struct Constants{
        
    
    static let hourlyForecast = 24
    
    enum URL: String{
        case weather = "https://api.open-meteo.com/v1/gfs?current_weather=true&hourly=temperature_2m,weathercode,is_day&daily=weathercode,temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto"
        
        case location = "https://geocoding-api.open-meteo.com/v1/search?"
    }
    
    enum URLParameter:String{
        case latitude = "&latitude="
        case longtitude = "&longitude="
        case name = "name="
    }
    
    enum storageKeys:String{
        case selectedLocation = "selectedLocation"
        case locations = "locations"
    }
    
    enum NIB:String{
        case dayViewCell = "DayViewCell"
        case timeViewCell = "TimeViewCell"
        case locationViewCell = "LocationViewCell"
    }
    
    enum Controller: String{
        case searchController = "search_vc"
    }
    
    enum WeatherUnits:String{
        case celsius = "℃"
        case fahrenheit = "℉"
        case kmph = "km/h"
    }
    
    enum DateFormates:String{
        case dateTime = "yyyy-MM-dd'T'HH:mm"
        case date = "yyyy-MM-dd"
        case time = "HH:mm"
    }
    
    enum Defaults: String{
        case unkown = "Unknown"
        case temparature =  "0˚ / 0˚"
    }
    
    
    enum Icons: String{
        case MoonStar = "moon.stars"
        case sun = "sun.max"
        case night = "🌚"
        case day = "🌕"
    }
    
    enum Background: String{
        case night = "night"
    }
    
}
