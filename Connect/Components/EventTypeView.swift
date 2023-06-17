//
//  EventTypeView.swift
//  Connect
//
//  Created by саргашкаева on 13.06.2023.
//

import SwiftUI

struct EventTypeView: View {
    
    var eventType: EventType = .Music
    
    var color: Color {
        switch eventType {
        case .Music:
            return Color(R.color.lightPurple()!)
        case .Theater:
            return Color(R.color.lightYellow()!)
        case .Food:
            return Color(R.color.lightGreen()!)
        case .Sports:
            return Color(R.color.lightPink()!)
        }
    }
    
    var body: some View {
        HStack {
            Image(systemName: eventType.icon)
            Text(eventType.rawValue)
                .foregroundColor(.black)
                .font(.caption)
                .fontWeight(.bold)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 6)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(color).opacity(0.5))
        
       
    }
}

struct EventTypeView_Previews: PreviewProvider {
    static var previews: some View {
        EventTypeView()
    }
}
