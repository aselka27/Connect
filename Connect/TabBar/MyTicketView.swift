//
//  MyTicketView.swift
//  Connect
//
//  Created by саргашкаева on 1.05.2023.
//

import SwiftUI

struct MyTicketView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Image(uiImage: R.image.coldPlay()!)
                .resizable()
                .frame(width: UIScreen.main.bounds.width)
            VStack {
           
                VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("16th Aug 2022 - 6:15pm")
                                .foregroundColor(Color(R.color.navyBlue()!))
                            ConcertStatusView(status: .Archived, color: Color(R.color.blue()!))
                        }
                    HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Coldplay - Music of the spheres")
                                    .font(Font.system(.title))
                                    .fontWeight(.bold)
                                Text("Wembley Stadium")
                                Text("London - United Kingdom")
                                    .foregroundColor(Color(R.color.navyBlue()!))
                            }
                            VStack(alignment: .center) {
                                Text("265")
                                    .font(Font.system(.title))
                                    .fontWeight(.bold)
                                Text("Photos & Videos")
                                    .foregroundColor(Color(R.color.navyBlue()!))
                            }
                           
                           
                        }
                      
                    }
                Button {
                    print("View Ticket")
                } label: {
                    Text("View Ticket")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .padding(12)
                        .padding(.horizontal, 18)
                        .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color(R.color.addTicketButton).opacity(0.7))
                        )
                }
                .padding(.top, 6)

                
              
            }
            .padding()
            .background(.white)
            .cornerRadius(12)
        }
        .ignoresSafeArea()
    }
}

struct MyTicketView_Previews: PreviewProvider {
    static var previews: some View {
        MyTicketView()
    }
}
