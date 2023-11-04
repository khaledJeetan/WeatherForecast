//
//  MockWeather.swift
//  weatherAppTests
//
//  Created by Prince Jeetan on 26/10/2023.
//

@testable import weatherApp

class CurrentWeatherMock: CurrentWeather{

    
     init() {
         super.init(is_day: 0, temperature: 0, time: "2023-10-26'T'20:42", weathercode: 3, winddirection: 0, windspeed: 0)
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
    
}
