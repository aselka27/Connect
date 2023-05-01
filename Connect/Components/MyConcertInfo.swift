//
//  ConcertInfo.swift
//  Connect
//
//  Created by саргашкаева on 30.04.2023.
//

import SwiftUI

struct MyConcertInfo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(uiImage: R.image.coldPlay()!)
                .resizable()
                .cornerRadius(12)
                .frame( height: 200)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("16th Aug 2022 - 6.15pm")
                            .foregroundColor(Color(R.color.navyBlue()!))
                        ConcertStatusView(status: .Live, color: Color(R.color.blue()!))
                        
                    }
                        Text("Coldplay")
                            .font(Font.system(.title))
                            .fontWeight(.bold)
                            .lineLimit(2)
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Wembley Staidum")
                            Text("London - United Kingdom")
                        }
                }
                .padding(.horizontal)
                .padding(.bottom)
               
                
               
        }
       
        .frame(minWidth: UIScreen.main.bounds.width*0.6)
        .background(.white)
        .cornerRadius(12)
    }
}

struct MyConcertInfo_Previews: PreviewProvider {
    static var previews: some View {
        MyConcertInfo()
            .previewLayout(.sizeThatFits)
    }
}
