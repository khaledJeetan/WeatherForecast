//
//  DaysViewCell.swift
//  weatherApp
//
//  Created by Prince Jeetan on 03/10/2023.
//

import UIKit

class DayViewCell: UITableViewCell {

    
    @IBOutlet weak var iconDayStatus: UILabel!
    @IBOutlet weak var minMaxTemperature: UILabel!
    
    
    func setLableTexts(iconDayStatus: String?, minMaxTemperature: String? ){
        self.backgroundColor = .clear
        self.iconDayStatus.text = iconDayStatus
        self.minMaxTemperature.text = minMaxTemperature
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
