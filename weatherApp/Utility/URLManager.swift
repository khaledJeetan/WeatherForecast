//
//  URLConstants.swift
//  weatherApp
//
//  Created by Prince Jeetan on 06/10/2023.
//

import Foundation

struct  URLManager{
    
    private init(){
        
    }
    
    private static let WEATHER = Constants.URL.weather.rawValue
    
    
    private static let LOCATION = Constants.URL.location.rawValue
        
    
    static func getWeatherURL(latitude: Double, longitude: Double) -> URL{
        let lat = Constants.URLParameter.latitude.rawValue + "\(latitude)"
        let lon = Constants.URLParameter.longtitude.rawValue + "\(longitude)"
        let url = WEATHER + lat + lon
        return URL(string: url)!
    }
    
    static func getLocationURL(city: String) -> URL{
        let url = LOCATION + Constants.URLParameter.name.rawValue + city
        return URL(string: url)!
    }

}
