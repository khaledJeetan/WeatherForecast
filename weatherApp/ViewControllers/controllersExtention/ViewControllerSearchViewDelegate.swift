//
//  ViewControllerSearchViewDelegate.swift
//  weatherApp
//
//  Created by Prince Jeetan on 17/10/2023.
//

import UIKit

extension ViewController: SearchViewControllerDelegate {
    
    func selectedLocation(selectedLocation: City) {
        self.selectedLocation = selectedLocation
    }
    
}
