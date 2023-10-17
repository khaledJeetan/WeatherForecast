//
//  SearchViewSearchBarDelegate.swift
//  weatherApp
//
//  Created by Prince Jeetan on 17/10/2023.
//

import UIKit

extension SearchViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange: String){
        loadData()
    }
    
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange: Int){
        if selectedScopeButtonIndexDidChange == 1 {
            searchBar.searchTextField.isEnabled = false
//            self.locations = StorageManager.manager.getLocations()
            searchBar.text = ""
            self.reloadTableView()
            return
        }
        self.locations = []
        reloadTableView()
        searchBar.searchTextField.isEnabled = true
    }
}
