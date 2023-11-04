//
//  NetworkManagerMock.swift
//  weatherAppTests
//
//  Created by Prince Jeetan on 25/10/2023.
//

@testable import weatherApp
import Foundation

final class NetworkManagerSuccessMock: NetwokManager {
    func request<T>(session: URLSession, stringURL: String, type: T.Type) async throws -> T? where T : Decodable, T : Encodable {
        let file = "\(type)JSON"
        return try StaticJSONMapper.decode(file: file, type: type)
    }

}
