//
//  RequestBuilder.swift
//  Connect
//
//  Created by саргашкаева on 22.05.2023.
//

import Foundation

protocol URLRequestBuilder {
    func build(with endPoint: BaseRouter) throws -> URLRequest
}


class URLRequestBuilderImpl: URLRequestBuilder {
    func build(with endPoint: BaseRouter) throws -> URLRequest {
        var urlComponents = URLComponents()
        urlComponents.scheme = endPoint.scheme
        urlComponents.host = endPoint.host
        urlComponents.path = endPoint.path
        urlComponents.queryItems = endPoint.queryParameters
        
        guard let url = urlComponents.url else {
            throw URLError(.badURL)
        }
        var urlRequest = URLRequest(url: url)
        
        urlRequest.httpMethod = endPoint.httpMethod.rawValue
        urlRequest.httpBody = endPoint.httpBody
        endPoint.httpHeader?.forEach({ header in
            urlRequest.setValue(header.value, forHTTPHeaderField: header.name)
        })
        return urlRequest
    }
}
