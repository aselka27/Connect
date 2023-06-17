//
//  TicketRouter.swift
//  Connect
//
//  Created by саргашкаева on 11.06.2023.
//

import Foundation



enum TicketRouter: BaseRouter {
    case getEvents
    
    var httpHeader: [HttpHeader]? {
        switch self {
        default:
            return nil
        }
    }
    
    var httpMethod: HttpMethod {
        switch self {
        case .getEvents:
            return .GET
        }
    }
    
    var path: String {
        switch self {
        case .getEvents:
            return "/discovery/v2/events.json"
        }
    }
    
    var queryParameters: [URLQueryItem]? {
        switch self {
        case .getEvents:
            return [.init(name: "city", value: "Chicago"), .init(name: "countryCode", value: "US") ,.init(name: "apikey", value: "GPXC589sTnAA7yjKxGdPLoU2K244AFk7")]
        }
    }
    
    var httpBody: Data? {
        switch self {
        default:
            return nil
        }
    }
    
   
}
