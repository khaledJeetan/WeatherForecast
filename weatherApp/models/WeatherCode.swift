//
//  WeatherCode.swift
//  weatherApp
//
//  Created by Prince Jeetan on 01/10/2023.
//

import Foundation

// if it doesn't work convert it to switch in a func
enum WeatherCode:Int {
    
    case Clear_Sky = 0
    case Mainly_Clear = 1
    case Partly_Cloudy = 2
    case Overcast = 3
    case Fog = 45
    case depositing_rime_fog = 48
    case light_drizzle = 51
    case moderate_drizzle = 53
    case densse_drizzle = 55
    case light_freezing_drizzle = 56
    case dense_freezing_drizzle = 57
    case slight_rain = 61
    case moderate_rain = 63
    case heavy_rain = 65
    case light_freezing_rain = 66
    case heavy_freezing_rain = 67
    case slight_Snow_fall = 71
    case moderate_snow_fall = 73
    case heavy_snow_fall = 75
    case snow_grains = 77
    case slight_rain_showers = 80
    case moderate_rain_showers = 81
    case heavy_rain_showers = 82
    case slight_snow_showers = 85
    case heavy_snow_showers = 86
    case thunderstorm = 95
}

