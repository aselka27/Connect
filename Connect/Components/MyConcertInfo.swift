//
//  ConcertInfo.swift
//  Connect
//
//  Created by саргашкаева on 30.04.2023.
//

import SwiftUI

struct MyConcertInfo: View {
    
    var event: Event
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            EventImageView(urlStringl: event.images?[1].url ?? "")
                .frame( height: 200)

                VStack(alignment: .leading) {
                    HStack {
                        Text("\(event.dates?.start?.localDate?.formatDateString() ?? "N/A")-\(event.dates?.start?.localTime?.formatTime() ?? "N/A")")
                            .foregroundColor(Color(R.color.navyBlue()!))
                        ConcertStatusView(status: .OnSale)
                        
                    }
                    Text(event.name ?? "N/A")
                            .font(Font.system(.title))
                            .fontWeight(.bold)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                           
                        VStack(alignment: .leading, spacing: 2) {
                            Text(event.embedded?.venues?.first?.name ?? "N/A")
                                .font(.footnote)
                            Text(event.embedded?.venues?.first?.address?.line1 ?? "N/A")
                                .font(.footnote)
                        }
                }
                .padding(.horizontal)
                .padding(.bottom)
        }
        .frame(width: UIScreen.main.bounds.width*0.8)
        .background(.white)
        .cornerRadius(12)
    }
}

struct MyConcertInfo_Previews: PreviewProvider {
    static var previews: some View {
        MyConcertInfo(event: Event(name: "Beyounce: Renesseiance Tour 1", id: "1", url: "", images: [Images(url: "", width: 20, height: 20)], dates: Dates(start: Start(localDate: "05/20/23", localTime: "6 pm", dateTime: "6 pm"), spanMultipleDays: false), embedded: EventEmbedded(venues: [Venue(name: "Soldier Fields", address: Address(line1: "Millenium Park"))])))
            .previewLayout(.sizeThatFits)
    }
}
