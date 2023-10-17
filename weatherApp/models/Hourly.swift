//
//  Hourly.swift
//  weatherApp
//
//  Created by Prince Jeetan on 06/10/2023.
//

import Foundation

class Hourly: Codable{
    var is_day: [Int]
    var temperature_2m: [Double]
    var time: [String]
    var weathercode: [Int]

    func getHourForcast(index: Int) -> HourForecast{
        let hour = DateManager.manager.getTime(from: time[index])
        
        return HourForecast(is_day: self.is_day[index], temperature: Int(self.temperature_2m[index]),hour: hour, code: weathercode[index])
    }
    
}
