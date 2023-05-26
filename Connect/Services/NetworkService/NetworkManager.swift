//
//  NetworkManager.swift
//  Connect
//
//  Created by саргашкаева on 22.05.2023.
//

import Foundation


enum APIError: Error {
    case badRequest
    case unsuccessfulRequest
    case failedToDecode
}

protocol NetworkFetcher {
    func performFetching<D: Decodable>(endpoint: BaseRouter, type: D.Type) async throws -> D
}


class NetworkManager: NetworkFetcher  {

    let requestBuilder: URLRequestBuilder = URLRequestBuilderImpl()
    
    func performFetching<D: Decodable>(endpoint: BaseRouter, type: D.Type) async throws -> D {
        let (data, response) = try await URLSession.shared.data(for: requestBuilder.build(with: endpoint))
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw APIError.unsuccessfulRequest
        }
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(type, from: data)
        } catch {
            throw APIError.failedToDecode
        }
        
    }
}
