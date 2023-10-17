//
//  SelectedLocationDelegate.swift
//  weatherApp
//
//  Created by Prince Jeetan on 11/10/2023.
//

import Foundation


protocol LocationViewCellDelegate{
    
    // Notify if Location did selected
    func didLocationSelected(selectedLocation: City)
    
}

protocol SearchViewControllerDelegate{
    func selectedLocation(selectedLocation: City)
}
