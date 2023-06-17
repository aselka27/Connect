//
//  ConcertStatus.swift
//  Connect
//
//  Created by саргашкаева on 1.05.2023.
//

import SwiftUI

struct ConcertStatusView: View {
    var status: ConcertStatus
    var color: Color {
        switch status {
        case .Archived:
            return Color(R.color.blue()!)
        case .Live:
            return Color(R.color.blue()!)
        case .OnSale:
            return Color(R.color.red()!)
        case .Upcoming:
            return .blue
        }
    }
    
    var body: some View {
        Text(status.rawValue)
            .foregroundColor(color)
            .font(.caption)
            .fontWeight(.bold)
            .padding(.horizontal, 10)
            .padding(.vertical, 6)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(color.opacity(0.2))
            )
    }
}

struct ConcertStatusView_Previews: PreviewProvider {
    static var previews: some View {
        ConcertStatusView(status: .Live)
    }
}
