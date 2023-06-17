//
//  EventType.swift
//  Connect
//
//  Created by саргашкаева on 13.06.2023.
//

import Foundation


enum EventType: String, CaseIterable {
    case Music
    case Theater
    case Food
    case Sports
    
    var icon: String {
        switch self {
        case .Music:
            return "music.note"
        case .Theater:
            return "theatermasks"
        case .Food:
            return "fork.knife"
        case .Sports:
            return "figure.run"
        }
    }
}
