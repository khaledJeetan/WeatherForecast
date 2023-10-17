//
//  SearchViewController.swift
//  weatherApp
//
//  Created by Prince Jeetan on 10/10/2023.
//

import UIKit

extension SearchViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations?.count ?? 0
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: locationNIB, for: indexPath) as? LocationViewCell
        if let locations = self.locations{
            // there is a better way
            // on new requests discard last one
            if(locations.count > indexPath.row){
                cell?.setLabels(city: locations[indexPath.row])
                cell?.delegate = self
            }
        }        
        return cell!
        
    }

    
}
