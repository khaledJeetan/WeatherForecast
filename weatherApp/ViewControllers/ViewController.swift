//
//  ViewController.swift
//  weatherApp
//
//  Created by Prince Jeetan on 01/10/2023.
//

// Statemanagment
// RXSwift ==> STL


import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var currentTemprature: UILabel!
    @IBOutlet weak var currentStatusMinMax: UILabel!
    @IBOutlet weak var cityLocation: UILabel!
    @IBOutlet weak var sevenDaysTableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    private var weatherModel: WeatherViewModel!
    
    
    
    
    
    
    
    
}
    
//    var weather: Weather?
//    var selectedLocation: City?
//    let dayNIB = Constants.NIB.dayViewCell.rawValue
//    let timeNIB = Constants.NIB.timeViewCell.rawValue
//    
//    
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        registerDayViewCell()
//        registerTimeViewCell()
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        if isLocationSet(){
//            loadData()
//        }
//    }
//    
//
//    
//    func isLocationSet() -> Bool{
////        let location = StorageManager.manager.getSelectedLocation()
//        guard self.selectedLocation != nil else{
//            print(Error.NilError)
//            showSearchLocationScreen(nil)
//            return false
//        }
////        self.selectedLocation = location
//        return true
//    }
//
//    
//    func showAlertMessage(){
//        let alert = UIAlertController(title: Error.AppError.rawValue, message: Error.NetworkError.rawValue, preferredStyle: .alert);
//        let alertAction = UIAlertAction(title: "Exit App", style: .cancel){
//            action in
//            exit(0)
//        }
//        alert.addAction(alertAction)
//        self.present(alert, animated: true)
//        
//    }
//
//    
//    func registerTimeViewCell(){
//        let nib = UINib(nibName: timeNIB, bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: timeNIB)
//        collectionView.dataSource = self
//        collectionView.backgroundColor = .clear
//        collectionView.isDirectionalLockEnabled = true
//    }
//
//    func registerDayViewCell(){
//        let nib = UINib(nibName: dayNIB, bundle: nil)
//        sevenDaysTableView.register(nib, forCellReuseIdentifier: dayNIB)
//        sevenDaysTableView.dataSource = self
//        sevenDaysTableView.backgroundColor = .none
//    }
//    
//    
//    func loadData(){
//        let manager = NetwokManager.manager
//        manager.fetchWeatherData(lon: selectedLocation!.longitude, lat: selectedLocation!.latitude ){
//            weather in
//            DispatchQueue.main.async {
//                guard let weather = weather else {
//                    self.showAlertMessage()
////                    StorageManager.manager.clearStorage()
//                    return
//                }
//                self.weather = weather
//                self.viewData()
//            }
//        }
//    }
//    
//    
//        
//    func viewData(){
//        
//        let currentWeather = weather!.current_weather
//        currentTemprature.text = Int(currentWeather!.temperature).description
//        currentStatusMinMax.text = "\(WeatherCode(rawValue: currentWeather!.weathercode)!)  \((currentWeather!.is_day != 0) ? Constants.Icons.day.rawValue : Constants.Icons.night.rawValue)"
//        cityLocation.text =  selectedLocation?.name ?? Constants.Defaults.unkown.rawValue
//        let image = currentWeather?.is_day == 1 ? UIImage(named: getBackgroundImage(code: currentWeather!.weathercode)) : UIImage(named: Constants.Background.night.rawValue)
//        backgroundImageView.image = image
//        sevenDaysTableView.reloadData()
//        collectionView.reloadData()
//    }
//    
//    
//    @IBAction func showSearchLocationScreen(_ sender: UIButton?) {
//        let searchContorller = self.storyboard?.instantiateViewController(identifier: Constants.Controller.searchController.rawValue) as! SearchViewController
//        searchContorller.modalPresentationStyle = .fullScreen
//        present(searchContorller, animated: true)
//        searchContorller.delegate = self
//    }
//    
//}
//
