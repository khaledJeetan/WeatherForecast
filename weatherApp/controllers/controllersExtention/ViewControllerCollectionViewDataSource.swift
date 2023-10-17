//
//  ViewControllerCollectionViewDataSource.swift
//  weatherApp
//
//  Created by Prince Jeetan on 17/10/2023.
//

import UIKit

extension ViewController: UICollectionViewDataSource{
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Constants.hourlyForecast
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: timeNIB, for: indexPath) as? TimeViewCell
        
        if let cell = cell, weather != nil {
            cell.setLabels(hourForcast: weather!.hourly!.getHourForcast(index: indexPath.row))
        }
        return cell!
    }
}
