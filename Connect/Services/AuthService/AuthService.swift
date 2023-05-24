//
//  AuthService.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import Foundation

protocol AuthService {
    func signIn(user: SignInUserForm)
    func signUp(user: SignUpUserForm)
}

final class AuthServiceImpl: AuthService {
    func signIn(user: SignInUserForm) {
        
    }
    
    func signUp(user: SignUpUserForm) {
        
    }
}
