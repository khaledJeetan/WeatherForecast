//
//  APIController.swift
//  weatherApp
//
//  Created by Prince Jeetan on 03/10/2023.
//


import Foundation

class NetwokManager{
    
    private var weatherURL : URL!
    private let session = URLSession.shared
    static let manager = NetwokManager()
    private var currentTask: URLSessionDataTask?
    
    private init(){
        
        
    }
    
    
    func fetchWeatherData(lon:Double,lat:Double, completion: @escaping (Weather?)-> (Void) ) {
        let url = URLManager.getWeatherURL(latitude: lat, longitude: lon)
        let task = session.dataTask(with: url) {
            data, response, error in
            if let error = error {
                print(Error.NetworkError)
                completion(nil)
                return
            }
            guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else{
                print(Error.NetworkError)
                completion(nil)
                return
            }
            
            if let data = data{
                do{
                   let weather = try JSONDecoder().decode(Weather.self, from: data)
                    completion(weather)
                }catch{
                    print(Error.ParseError)
                    completion(nil)
                }
                    }
                }
        
        task.resume()
    }
    
    func fetchLocationData(city: String, completion: @escaping (Location?)->() ){        
        let url = URLManager.getLocationURL(city: city)
        self.currentTask = self.session.dataTask(with: url){
            (data, response, error) in
            if let error = error {
                print(Error.NetworkError)
                print(error)
                completion(nil)
                return
            }
            
            if let data = data {
                do{
                    let location = try JSONDecoder().decode(Location.self, from: data)
                    completion(location)
                }catch{
                    print(Error.ParseError)
                    completion(nil)
                }
            }
        }
        
        currentTask!.resume()
        
    }
    
    func cancelCurrentRequest(){
        currentTask?.cancel()
    }
    
    
}
