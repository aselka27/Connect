//
//  DatabaseService.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import Foundation
import FirebaseFirestore
import os


let logger = OSLog(subsystem: "come.aselZhumalieva.Connect", category: "debug")

class DatabaseService {
    
    static let shared = DatabaseService()
    private let db = Firestore.firestore()
    
    private var usersRef: CollectionReference {
        return db.collection("users")
    }
    
    private init() {}
    
    func setProfile(user: SignUpUserForm, uid: String) async throws  {
        os_log("Attempting Firebase login", log: logger, type: .info)
        do {
            var userData: [String: Any] = [
                "user_id" : uid,
                "username":user.username,
                "email": user.email,
                "city": user.city,
                "country": user.country
            ]
            try await usersRef.document(uid).setData(userData, merge: false)
            os_log("Success registering the user", log: logger, type: .info)
        } catch {
            os_log("Firebase login failed: %@", log: logger, type: .error, error.localizedDescription)
            throw error
        }
    }
    
    
}
