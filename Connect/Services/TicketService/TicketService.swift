//
//  TicketService.swift
//  Connect
//
//  Created by саргашкаева on 11.06.2023.
//

import Foundation


protocol TicketService {
    func getEvents() async throws -> EmbeddedResponse
}

final class TicketServiceImpl: TicketService {
    
    static let shared = TicketServiceImpl()
    
    private init() {}
    func getEvents() async throws -> EmbeddedResponse {
        let ticketsData =  try await NetworkManager.shared.performFetching(endpoint: TicketRouter.getEvents, type: EmbeddedResponse.self)
        return ticketsData
    }
}
