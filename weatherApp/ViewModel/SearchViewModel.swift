//
//  SearchViewModel.swift
//  weatherApp
//
//  Created by Prince Jeetan on 19/10/2023.
//

import Foundation

class SearchViewModel: NSObject{
    
    var locations: Location?
    var searchCity: String = ""
    
    var cites:[City]?{
        locations?.results
    }
    
    
    func findLocations(){
        let manager = NetwokManager.manager
            manager.cancelCurrentRequest()
            manager.fetchLocationData(city: searchCity){
                location in
                guard let location = location else{
                    return
                }
                self.locations = location
        }
    }
}
