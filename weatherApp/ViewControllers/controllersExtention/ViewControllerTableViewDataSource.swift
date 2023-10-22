//
//  ViewController.swift
//  weatherApp
//
//  Created by Prince Jeetan on 10/10/2023.
//

import UIKit

extension ViewController: UITableViewDataSource{
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return weather?.daily?.time.count ?? 0
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let dayForecast = self.weather?.daily?.getDayForcast(index: indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: dayNIB, for: indexPath) as? DayViewCell
        cell?.setLableTexts(iconDayStatus: dayForecast?.getIconStatusDay(), minMaxTemperature:  dayForecast?.getMinMax())
        
        return cell!
        
    }
    
}
