//
//  WeatherViewModel.swift
//  weatherApp
//
//  Created by Prince Jeetan on 18/10/2023.
//

import Foundation

class WeatherViewModel: NSObject{
    
    var weather: Weather?
    var selectedLocation: City?
    var currentWeather: CurrentWeather?{
        weather?.current_weather
    }
    
    var isLocationSelected:Bool{
        isLocationSet()
    }
    
    var currentTemparature:String{
        Int(currentWeather!.temperature).description
    }
    
    var  currentStatusMinMax: String{
        "\(WeatherCode(rawValue: currentWeather!.weathercode)!)  \((currentWeather!.is_day != 0) ? Constants.Icons.day.rawValue : Constants.Icons.night.rawValue)"
    }
    
    var cityLocation:String{
        selectedLocation?.name ?? Constants.Defaults.unkown.rawValue
    }
    
    var image:String{
        currentWeather?.is_day == 1 ?  getBackgroundImage(code: currentWeather!.weathercode) : Constants.Background.night.rawValue
    }

    
    func loadData(){
        let manager = NetwokManager.manager
        manager.fetchWeatherData(lon: selectedLocation!.longitude, lat: selectedLocation!.latitude ){
            weather in
            DispatchQueue.main.async {
                guard let weather = weather else {
//                    self.showAlertMessage()
//                    StorageManager.manager.clearStorage()
                    return
                }
                self.weather = weather
            }
        }
    }
    
   
        func isLocationSet() -> Bool{
    //        let location = StorageManager.manager.getSelectedLocation()
            guard self.selectedLocation != nil else{
                print(Error.NilError)
                return false
            }
    //        self.selectedLocation = location
            return true
        }
    
}
