//
//  User.swift
//  Connect
//
//  Created by саргашкаева on 6.05.2023.
//

import Foundation



struct User {
    let name: String?
    let email: String?
    let tickets: [MyTicket]?
}


struct MyTicket {
    let artist: String?
    let date: String?
    let venue: String?
    let barcodeNumber: String?
}

