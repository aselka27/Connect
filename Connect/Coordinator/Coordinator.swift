//
//  Coordinator.swift
//  Connect
//
//  Created by саргашкаева on 25.05.2023.
//

import Foundation

enum Route: Hashable {
    case login
    case register
}


class Coordinator: ObservableObject {
    @Published var path = [Route]()
}
