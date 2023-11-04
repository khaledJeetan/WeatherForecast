//
//  APIController.swift
//  weatherApp
//
//  Created by Prince Jeetan on 03/10/2023.
//


import Foundation

protocol NetwokManager{
    func request<T: Codable>(session: URLSession, url: URL, type: T.Type)async throws -> T?
}

final class NetwokManagerImp: NetwokManager{
    
    static let shared = NetwokManagerImp()

    private init(){}
    
    
    func request<T: Codable>(session: URLSession = .shared, url: URL, type: T.Type)async throws -> T?{
                
        let (data, response) = try await session.data(from: url)
        
        guard let response = response as? HTTPURLResponse, (200...300) ~= response.statusCode else{
            let statusCode = (response as! HTTPURLResponse).statusCode
            throw ServiceError.network(statusCode: statusCode)
        }
        let res = try JSONDecoder().decode(type, from: data)
        return res;
    }
    
}
