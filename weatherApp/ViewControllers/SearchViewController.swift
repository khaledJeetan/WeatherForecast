//
//  SearchViewController.swift
//  weatherApp
//
//  Created by Prince Jeetan on 06/10/2023.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchTableView: UITableView!
    
    let locationNIB = Constants.NIB.locationViewCell.rawValue
    var locations:[City]?
    var viewController: ViewController?
    var delegate: SearchViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        registerSearchTableView()
    }
    
    func reloadTableView(){
        DispatchQueue.main.async {
            self.searchTableView.reloadData()
        }
    }
    
    
    func loadData(){
        let manager = NetwokManager.manager
        
        let searchText = searchBar.searchTextField.text!
        if !searchText.isEmpty {
            manager.cancelCurrentRequest()
            manager.fetchLocationData(city: searchText){
                location in
                guard let location = location else{
                    return
                }
                self.locations = location.results
                self.reloadTableView()
            }
        }
    }
    

    func registerSearchTableView(){
        let nib = UINib(nibName: locationNIB, bundle: nil)
        searchTableView.register(nib, forCellReuseIdentifier: locationNIB)
        searchTableView.dataSource = self
    }
    

}
