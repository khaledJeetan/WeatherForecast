//
//  StorageM.swift
//  weatherApp
//
//  Created by Prince Jeetan on 12/10/2023.
//


import Foundation

class StorageM{
    private let storage = UserDefaults.standard
   
    static var manager = StorageM()

        private init(){
        
    }
    
    // should be general
    // constants
    // use Delegates
    // save Memory
    // Reusable method should be in general utils.
    // KVO => key value observation
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

