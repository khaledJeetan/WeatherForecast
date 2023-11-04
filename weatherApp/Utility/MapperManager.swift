//
//  StaticJSONMapper.swift
//  weatherAppTests
//
//  Created by Prince Jeetan on 25/10/2023.
//

import Foundation

protocol MapperManager{
    func decode<T: Codable>(data: Data,type: T.Type)throws -> T?
    
    func decode<T: Codable>(file: String,type: T.Type)throws -> T?
}


final class JSONMapper{
    
    static let shared = JSONMapper()
    
    private init(){}
    
    
    func decode<T: Codable>(data: Data,type: T.Type  )throws -> T?{
        guard let decodedData = try? JSONDecoder().decode(type, from: data) else{
            throw ServiceError.parsing
        }
        return decodedData
    }
    
    func decode<T: Codable>(file: String,type: T.Type  )throws -> T?{
        
        guard !file.isEmpty,
              let path = Bundle.main.path(forResource: file, ofType: Constants.json),
              let data = FileManager.default.contents(atPath: path)
        else{
            throw ServiceError.mappingError(reason: "failed To Get Content from File")
        }
        
        return try decode(data: data, type: type)
    }
}
