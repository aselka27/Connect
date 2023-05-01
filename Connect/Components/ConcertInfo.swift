//
//  ConcertInfo.swift
//  Connect
//
//  Created by саргашкаева on 1.05.2023.
//

import SwiftUI

struct ConcertInfo: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("16th Aug 2022 - 6:15pm")
                        .foregroundColor(Color(R.color.navyBlue()!))
                    ConcertStatusView(status: .OnSale, color: Color(R.color.red()!))
                }
                Text("Kevin Hart")
                    .font(Font.system(.title))
                    .fontWeight(.bold)
                VStack(alignment: .leading) {
                    Text("Wembley Stadium")
                    Text("London - United Kingdom")
                        .foregroundColor(Color(R.color.navyBlue()!))
                }
            }
            Image(uiImage: R.image.kevinHeart()!)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .cornerRadius(10)
        }
        .padding(12)
        .background(.white)
        .cornerRadius(20)
        
    }
}

struct ConcertInfo_Previews: PreviewProvider {
    static var previews: some View {
        ConcertInfo()
    }
}
