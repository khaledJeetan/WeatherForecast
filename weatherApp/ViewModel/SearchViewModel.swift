//
//  SearchViewModel.swift
//  weatherApp
//
//  Created by Prince Jeetan on 19/10/2023.
//

import Foundation

class SearchViewModel: NSObject{
    
    var selectedCity: City?
    @objc dynamic var cities:[City]?
    private let networkManager: NetwokManager!
    private var currentTask: Task<(), Never>?
    
    // we did that so that we provide a mock network manager that doesn't fetch data from a server
     init(networkManager: NetwokManager = NetwokManagerImp.shared ) {
        self.networkManager = networkManager
    }
    
    func findLocations(search: String){
        
        currentTask?.cancel()
        currentTask = Task{
            let url = URLManager.getLocationURL(city: search)
            do{
                let locations = try await networkManager.request(session: .shared, stringURL: url, type: Location.self)
                self.cities = locations?.results
            } catch ServiceError.invalidurl{
                
            } catch ServiceError.network{
                
            } catch{
                
            }
        }
    }
}
