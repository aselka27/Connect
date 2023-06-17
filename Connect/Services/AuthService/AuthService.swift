//
//  AuthService.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import Foundation
import FirebaseAuth


enum RegisterErrors {
    case invalidEmail
    case invalidPassword
    case emptyField(name: String)
    
    var description: String {
        switch self {
        case .invalidEmail:
            return "Please make sure that you have entered correct email"
        case .invalidPassword:
            return "Please make sure that password is at least 8 characters long"
        case .emptyField(let name):
            return "Fill out \(name) field"
        }
    }
}

protocol AuthService {
    func signIn(user: SignInUserForm) async throws -> User
    func signUp(user: SignUpUserForm) async throws
}

final class AuthServiceImpl: AuthService {
    
    static let shared = AuthServiceImpl()
    
    private init() {}
    
    private let auth = Auth.auth() /// users table is stored here
    
    var currenUser: User? {
        return auth.currentUser
    }
    
    func signIn(user: SignInUserForm) async throws -> User {
        do {
            let result = try await auth.signIn(withEmail: user.email, password: user.email)
            return result.user
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
    
    func signOut() throws {
        do {
        try auth.signOut()
        } catch {
            throw error
        }
    }
}
