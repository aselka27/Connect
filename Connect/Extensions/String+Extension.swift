//
//  String+Extension.swift
//  Connect
//
//  Created by саргашкаева on 30.05.2023.
//

import Foundation


extension String {
    var isValidPassword: Bool {
        return self.count > 6
    }
    
    var isValidEmail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}
