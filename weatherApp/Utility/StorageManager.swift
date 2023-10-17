//
//  StorageManager.swift
//  weatherApp
//
//  Created by Prince Jeetan on 08/10/2023.
//

import Foundation

class StorageManager {
    
    
    private let storage = UserDefaults.standard
    static var manager = StorageManager()
    private let selectedLocation = Constants.storageKeys.selectedLocation.rawValue
    private let locations = Constants.storageKeys.locations.rawValue

        private init(){
        
    }
    
    func isLocationStored(cityId: Int) -> Bool{
        guard getLocations()?.firstIndex(of: cityId) != nil else{
            print(Error.NotStoredError)
            return false;
        }
        return true
    }
    
  
    func storeSelectedLocation(cityId: Int){
        storage.set(cityId, forKey: selectedLocation)
    }
    
    func getSelectedLocation() -> Int{
        return storage.integer(forKey: selectedLocation)
        
    }
    
    func isLocationSelected(cityId: Int) -> Bool{
        return getSelectedLocation() == cityId
    }
    
    
    
     func storeLocation(cityId: Int){
        let locations = getLocations()
        guard var locations = locations else {
            let savedLocations = [cityId]
            storage.set(savedLocations, forKey: self.locations)
            return
        }
         if !isLocationStored(cityId: cityId){
             locations.append(cityId)
             storage.set(locations, forKey: self.locations)
         }
    }
    
    
    func getLocations() -> [Int]?{
        return storage.array(forKey: locations) as? [Int]
    }
    
    func clearStorage(){
        storage.removeObject(forKey: locations)
        storage.removeObject(forKey: selectedLocation)
    }
}
