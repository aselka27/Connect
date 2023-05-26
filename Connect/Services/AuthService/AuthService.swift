//
//  AuthService.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import Foundation
import FirebaseAuth

protocol AuthService {
    func signIn(user: SignInUserForm) async throws
    func signUp(user: SignUpUserForm) async throws
}

final class AuthServiceImpl: AuthService {
    
    static let shared = AuthServiceImpl()
    
    private init() {}
    
    private let auth = Auth.auth() /// users table is stored here
    
    var currenUser: User? {
        return auth.currentUser
    }
    
    func signIn(user: SignInUserForm) async throws {
        do {
            let result = try await auth.signIn(withEmail: user.email, password: user.password)
        } catch {
            throw error
        }
    }
    
    func signUp(user: SignUpUserForm) async throws {
        do {
            let result = try await auth.createUser(withEmail: user.email, password: user.password)
            try await DatabaseService.shared.setProfile(user: user, uid: result.user.uid)
            
        } catch {
            print("Error registering user: \(error.localizedDescription)")
            throw error
        }
    }
}
