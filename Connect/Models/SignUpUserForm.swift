//
//  SignUpUserForm.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import Foundation

struct SignUpUserForm {
    var username: String
    var email: String
    var confirmPassword: String
    var password: String
    var city: String
    var country: String
    
    var representation: [String: Any] {
        return ["username":self.username, "email": self.email, "city": self.city, "country": self.country]
    }
}

struct Credentials {
    let email: Email
    let password: Password
}
struct Email {
    let email: String
    
    init?(_ rawString: String) {
        guard rawString.isValidEmail else {
            return nil
        }
        email = rawString
    }
}

struct Password {
    let password: String
    
    init?(_ rawString: String) {
        guard rawString.isValidPassword else {
            return nil
        }
        password = rawString
    }
}

