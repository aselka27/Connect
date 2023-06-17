//
//  EventsResponse.swift
//  Connect
//
//  Created by саргашкаева on 2.05.2023.
//

import Foundation


struct EmbeddedResponse: Codable {
    let embedded: EventsResponse?
    
    enum CodingKeys: String, CodingKey {
        case embedded = "_embedded"
    }
}

struct EventsResponse: Codable {
    let events: [Event]?
}

struct Event: Codable {
    let name: String?
    let id: String?
    let url: String?
    let images: [Images]?
    let dates: Dates?
    let embedded: EventEmbedded?
    
    enum CodingKeys: String, CodingKey {
        case embedded = "_embedded"
        case name, id, url, images, dates
    }
}

struct Images: Codable {
    let url: String?
    let width, height: Int?
}

struct Dates: Codable {
    let start: Start?
    let spanMultipleDays: Bool?
}

struct Start: Codable {
    let localDate, localTime: String?
    let dateTime: String?
}

struct EventEmbedded: Codable {
    let venues: [Venue]?
}

struct Venue: Codable {
    let name: String?
    let address: Address?
}

struct Address: Codable {
    let line1: String?
}

