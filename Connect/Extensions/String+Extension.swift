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
    
    func formatTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        guard let time = dateFormatter.date(from: self) else {
            return ""
        }
        
        dateFormatter.dateFormat = "h a"
        return dateFormatter.string(from: time)
    }
    
    func formatDateString() -> String {
        let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            guard let date = dateFormatter.date(from: self) else {
                return ""
            }
            
            let calendar = Calendar.current
            let day = calendar.component(.day, from: date)
            
            dateFormatter.dateFormat = "d'\(getDaySuffix(day: day))' MMM yyyy"
            return dateFormatter.string(from: date)
    }
    
    func getDaySuffix(day: Int) -> String {
            if (11...13).contains(day % 100) {
                return "th"
            }
            switch day % 10 {
            case 1: return "st"
            case 2: return "nd"
            case 3: return "rd"
            default: return "th"
            }
        }
}


