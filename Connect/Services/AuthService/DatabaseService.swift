//
//  DatabaseService.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import Foundation
import FirebaseFirestore




class DatabaseService {
    
    static let shared = DatabaseService()
    private let db = Firestore.firestore()
    
    private var usersRef: CollectionReference {
        return db.collection("users")
    }
    
    private init() {}
    
    func setProfile(user: SignUpUserForm, uid: String) async throws  {
        do {
            var userData: [String: Any] = [
                "user_id" : uid,
                "username":user.username,
                "email": user.email,
                "city": user.city,
                "country": user.country
            ]
            try await usersRef.document(uid).setData(userData, merge: false)
            print("Success registering the user")
        } catch {
            print("Error saving the user: \(error.localizedDescription)")
            throw error
        }
    }
    
    
}
