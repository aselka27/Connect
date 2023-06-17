//
//  User.swift
//  Connect
//
//  Created by саргашкаева on 6.05.2023.
//

import Foundation


struct UserData {
    let name: String?
    let email: String?
    let uid: String
    let phone: String
    let city: String
    let country: String
    let tickets: [MyTicket]? = nil
}

struct MyTicket {
    let ticketId: String
    let artist: String?
    let date: String?
    let venue: String?
    let barcodeNumber: String?
}

