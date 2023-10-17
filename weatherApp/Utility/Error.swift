//
//  Error.swift
//  weatherApp
//
//  Created by Prince Jeetan on 12/10/2023.
//

import Foundation


enum Error: String{
    case ParseError = "❌❌Error Parsing Data❌❌"
    case NotFoundError = "❌❌Error Data Not Found ❌❌"
    case NotStoredError = "❌❌ Object Not Stored ❌❌"
    case NetworkError = "❌❌Error getting data from API, Check Your Internet/ or Request❌❌"
    case NilDateError = "❌❌ error Cannot get day from nil date ❌❌"
    case NilError = "error Nil value Found"
    case AppError = "Error Occured"
}
