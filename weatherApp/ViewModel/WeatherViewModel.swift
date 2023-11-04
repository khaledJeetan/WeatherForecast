//
//  WeatherViewModel.swift
//  weatherApp
//
//  Created by Prince Jeetan on 18/10/2023.
//

import Foundation


class WeatherViewModel: NSObject{
    // i needed to add [and inherit NSObject] to make @objc work otherwise error will occure
    // if i want to set all members of a class @objc dynamic i can write @objcMember
    @objc dynamic var weather: Weather?
    var selectedLocation: City?
    var currentWeather: CurrentWeather?{
        weather?.current_weather
    }
    
    var isLocationSelected:Bool{
        self.selectedLocation != nil
    }
    
    var currentTemparature:String{
            return Int(currentWeather!.temperature).description
    }
    
    var  currentStatusDayLight: String{
          return "\(WeatherCode(rawValue: currentWeather!.weathercode)!)  \((currentWeather!.is_day != 0) ? Constants.Icons.day.rawValue : Constants.Icons.night.rawValue)"
    }
    
    var cityLocation:String{
        selectedLocation?.name ?? Constants.Defaults.unkown.rawValue
    }
    
    var image:String{
        currentWeather!.is_day == 1 ?  getBackgroundImage(code: currentWeather!.weathercode) : Constants.Background.night.rawValue
    }

    let hourlyCount = Constants.hourlyForecast
    
    
    private let netWorkManager: NetwokManager!
    
    init(networkManager: NetwokManager = NetwokManagerImp.shared){
        self.netWorkManager = networkManager
    }
    
    
    // this function can be enhanced more
    func loadData(){
        Task{
            // url manager should be abstracted
            let url = URLManager.getWeatherURL(latitude: selectedLocation!.latitude, longitude: selectedLocation!.longitude)
            do{
                self.weather = try await netWorkManager.request(session: .shared, stringURL: url, type: Weather.self)
            } catch ServiceError.network{
                // Show Alert
            } catch ServiceError.invalidurl{
                // show Alert
            } catch{
                // show Alert
            }
        }
    }
    
}


// add view State
// enum ==> loading, fetching, finished
