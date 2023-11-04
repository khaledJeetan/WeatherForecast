//
//  StorageM.swift
//  weatherApp
//
//  Created by Prince Jeetan on 12/10/2023.
//


import Foundation

class StorageManager{
    private let storage = UserDefaults.standard
   
    static var manager = StorageManager()

        private init(){}
    
    func storeIntValue(value: Any, key: String){
        storage.set(value, forKey: key)
    }
    
    func getStoredValue(forKey: String) -> Any?{
        storage.value(forKey: forKey)
    }
    
    
    func clearStorage(keys: [String]){
        
        for key in keys {
            storage.removeObject(forKey: key)
        }
    }
}

