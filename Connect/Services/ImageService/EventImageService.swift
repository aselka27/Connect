//
//  EventImageService.swift
//  Connect
//
//  Created by саргашкаева on 12.06.2023.
//

import SwiftUI



class EventImageService {
 
    
    static let shared = EventImageService()
    
    private init() {}
    
    func getEventImageFor(url: String ) async throws -> UIImage? {
        guard let url = URL(string: url) else { return nil }
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        
        return UIImage(data: data)
    }
}
