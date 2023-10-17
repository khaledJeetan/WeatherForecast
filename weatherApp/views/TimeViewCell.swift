//
//  CollectionViewCell.swift
//  weatherApp
//
//  Created by Prince Jeetan on 11/10/2023.
//

import UIKit

class TimeViewCell: UICollectionViewCell {

    @IBOutlet weak var statusImageView: UIImageView!
    @IBOutlet weak var temparatureLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setLabels(hourForcast: HourForecast){
        let icon = hourForcast.is_day == 0 ? Constants.Icons.MoonStar.rawValue : Constants.Icons.sun.rawValue
        temparatureLabel.text = hourForcast.temperature?.description.appending(Constants.WeatherUnits.celsius.rawValue)
        timeLabel.text = hourForcast.hour
        statusImageView.image = UIImage(systemName: icon )
    }
}
