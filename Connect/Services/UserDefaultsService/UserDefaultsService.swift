//
//  UserDefaultsService.swift
//  Connect
//
//  Created by саргашкаева on 3.06.2023.
//

import SwiftUI

enum SystemSettings: String {
    case isLoggedIn
}

enum UserInfo: String {
    case userName
}
class UserDefaultsService: ObservableObject {
    @AppStorage(SystemSettings.isLoggedIn.rawValue) var isLoggedIn = false
    @AppStorage(UserInfo.userName.rawValue) var userName = ""
}
