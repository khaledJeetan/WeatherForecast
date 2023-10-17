//
//  searchResultCellTableViewCell.swift
//  weatherApp
//
//  Created by Prince Jeetan on 06/10/2023.
//

import UIKit

class LocationViewCell: UITableViewCell {

    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var countryName: UILabel!
    
    
    var delegate: LocationViewCellDelegate?
    var city:City!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setLabels(city:City){
        self.city = city
        self.cityName.text = city.name
        self.countryName.text = "\(city.admin1), \(city.country ?? city.country_code)"
//        if city == StorageManager.manager.getSelectedLocation(){
//            locationButton.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
//        }
//        else if StorageManager.manager.isLocationStored(city: city){
//            locationButton.setImage(UIImage(systemName: "checkmark.circle"), for: .normal)
//        }
//        else{
//            locationButton.setImage(UIImage(systemName: "plus"), for: .normal)
//        }
        
    }
    
    
    @IBAction func addLocation(_ sender: UIButton) {
//        StorageManager.manager.storeLocation(city: self.city)
//        StorageManager.manager.storeSelectedLocation(city: city)
        delegate?.didLocationSelected(selectedLocation: city)
        let controller = self.window?.rootViewController?.presentedViewController
        controller?.dismiss(animated: true)
    }
    
}
