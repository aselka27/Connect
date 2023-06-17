//
//  ConcertInfo.swift
//  Connect
//
//  Created by саргашкаева on 1.05.2023.
//

import SwiftUI

struct ConcertInfo: View {
    
    var event: Event
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("\(event.dates?.start?.localDate?.formatDateString() ?? "N/A")-\(event.dates?.start?.localTime?.formatTime() ?? "N/A")")
                        .foregroundColor(Color(R.color.navyBlue()!))
                    ConcertStatusView(status: .OnSale)
                }
                .frame(maxWidth: .infinity)
                Text(event.name ?? "N/A")
                    .font(Font.system(.headline))
                    .fontWeight(.bold)
                    .lineLimit(1)
                VStack(alignment: .leading) {
                    Text(event.embedded?.venues?.first?.name ?? "N/A")
                        .font(.footnote)
                    Text(event.embedded?.venues?.first?.address?.line1 ?? "N/A")
                        .font(.footnote)
                        .foregroundColor(Color(R.color.navyBlue()!))
                }
            }
            EventImageView(urlStringl: event.images?[1].url ?? "")
//                .resizable()
//                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 100)
               
        }
        .padding(12)
        .background(.white)
        .cornerRadius(20)
        .frame(maxWidth: .infinity)
    }
}

struct ConcertInfo_Previews: PreviewProvider {
    static var previews: some View {
        ConcertInfo(event: Event(name: "Beyounce: Renesseiance Tour 1", id: "1", url: "", images: [Images(url: "", width: 20, height: 20)], dates: Dates(start: Start(localDate: "05/20/23", localTime: "6 pm", dateTime: "6 pm"), spanMultipleDays: false), embedded: EventEmbedded(venues: [Venue(name: "Soldier Fields", address: Address(line1: "Millenium Park"))])))
    }
}
