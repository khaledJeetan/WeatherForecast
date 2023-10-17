//
//  DayForecast.swift
//  weatherApp
//
//  Created by Prince Jeetan on 02/10/2023.
//

import Foundation


class DayForecast{
    
    var code: Int?
    var maxTemperature: Double?
    var minTemperature: Double?
    var date: Date?
    var day: Day?{
        
        Day(rawValue: DateManager.manager.getDayOfWeek(from: date))
    }
    
    
    init(code: Int? = nil, maxTemperature: Double? = nil, minTemperature: Double? = nil, date: Date? = nil) {
        self.code = code
        self.maxTemperature = maxTemperature
        self.minTemperature = minTemperature
        self.date = date
    }
    
    
    func getStatus() -> WeatherCode?{
        guard let code = self.code else{
            print()
            return nil
        }
        return WeatherCode(rawValue: code)
    }
    
    func getIconStatusDay() -> String{
        guard let day = day, let code = getStatus() else{
            return Constants.Defaults.unkown.rawValue
        }
        return "   \(getStatusIcon(code: code.rawValue))  \(day)  \(code)"
    }
    
    func getMinMax() -> String{
        guard let min = minTemperature, let max = maxTemperature else{
            return Constants.Defaults.temparature.rawValue
        }
        return  "\(Int(min))˚ / \(Int(round(max)))˚"
    }
}

