//
//  SignUpUserForm.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import Foundation

struct SignUpUserForm {
    var username: String
    var confirmPassword: String
    var city: String
    var country: String
    var email: String
    var password: String
    
    var representation: [String: Any] {
        return ["username":self.username, "email": self.email, "city": self.city, "country": self.country]
    }
}

struct Email {
    var string: String
    
    init?(_ rawString: String) {
        guard rawString.isValidEmail else {
            return nil
        }
        string = rawString
    }
}

struct Password {
    var string: String
    
    init?(_ rawString: String) {
        guard rawString.isValidPassword else {
            return nil
        }
        string = rawString
    }
}

