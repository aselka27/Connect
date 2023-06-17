//
//  MainViewModel.swift
//  Connect
//
//  Created by саргашкаева on 11.06.2023.
//

import Foundation



protocol HomeViewModel: AnyObject {
    func getTickets() async
}


class HomeViewModelImpl: HomeViewModel, ObservableObject {
    
    
    @Published var events = [Event]()
    init() {
        self.getTickets()
    }
    
    func getTickets() {
        Task { @MainActor in
            do {
               let result = try await TicketServiceImpl.shared.getEvents()
                if let events = result.embedded?.events {
                    self.events = events
                }
            } catch {
                print(error)
            }
        }
       
        
    }
}
