//
//  Daily.swift
//  weatherApp
//
//  Created by Prince Jeetan on 06/10/2023.
//

import Foundation


class Daily: Codable{
    var sunrise: [String]
    var sunset: [String]
    var temperature_2m_max: [Double]
    var temperature_2m_min: [Double]
    var time: [String]
    var weathercode: [Int]
    
    /**
     @return the DayForcast object at Specified index
     @Param: The index of the next 7 days to forcast
     */
    func getDayForcast( index: Int) -> DayForecast{
        let date = DateManager.manager.getDate(from: time[index])
        let code = weathercode[index]
        let maxTemp = temperature_2m_max[index]
        let minTemp = temperature_2m_min[index]
        return DayForecast(code: code, maxTemperature: maxTemp, minTemperature: minTemp, date: date)

    }
}
