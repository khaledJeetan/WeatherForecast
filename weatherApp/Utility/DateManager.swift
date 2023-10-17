//
//  DateUtils.swift
//  weatherApp
//
//  Created by Prince Jeetan on 02/10/2023.
//

import Foundation


// equavelant to static in swift

class DateManager{
    
    static var manager = DateManager()
    
    
    private init(){
        
    }
    
    func getDateTime(from: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = Constants.DateFormates.dateTime.rawValue
        return dateFormatter.date(from: from)
    }
    func getDate(from: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = Constants.DateFormates.date.rawValue
        return dateFormatter.date(from: from)
    }
    
    func getTime(from: String) -> String{
        let date = getDateTime(from: from)
        if let date = date{
            let hour = Calendar.current.component(.hour, from: date)
            let minute = Calendar.current.component(.minute, from: date)
            return "\(hour):\(minute)0"
            
        }
        return Constants.DateFormates.time.rawValue
    }
    
    func getDayOfWeek(from: Date?) -> Int{
        guard let date = from else{
            print(Error.NilDateError)
            return -1
        }
        return Calendar.current.component(.weekday, from: date)
    }
    
    func getDates(from: [String]) -> [Date]? {
        var dates = [Date]()
        
        for date in from {
            dates.append(getDate(from: date)!)
        }
        return dates
    }
    
}
