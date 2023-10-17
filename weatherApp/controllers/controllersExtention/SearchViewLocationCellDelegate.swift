//
//  SearchViewLocationCellDelegate.swift
//  weatherApp
//
//  Created by Prince Jeetan on 17/10/2023.
//

import UIKit

extension SearchViewController: LocationViewCellDelegate{
    
    
    func didLocationSelected(selectedLocation: City) {
        delegate?.selectedLocation(selectedLocation: selectedLocation)
    }
    
}
