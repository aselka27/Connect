//
//  SessionService.swift
//  Connect
//
//  Created by саргашкаева on 7.06.2023.
//

import Foundation



class SessionService: ObservableObject {
    enum CurrentState {
        case loggedIn
        case loggedOut
    }
    
    @Published private(set) var currentState: CurrentState?
    
    
}
