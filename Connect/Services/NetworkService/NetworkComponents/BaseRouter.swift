//
//  BaseRouter.swift
//  Connect
//
//  Created by саргашкаева on 22.05.2023.
//

import Foundation



protocol BaseRouter {
    var httpHeader: [HttpHeader]? { get }
    var httpMethod: HttpMethod { get }
    var path: String { get }
    var queryParameters: [URLQueryItem]? { get }
    var httpBody: Data? { get }
}


extension BaseRouter {
    var scheme: String {
        return "https"
    }
    
    var host: String {
        return "https://app.ticketmaster.com/discovery/v2"
    }
}






