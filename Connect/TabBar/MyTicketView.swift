//
//  MyTicketView.swift
//  Connect
//
//  Created by саргашкаева on 1.05.2023.
//

import SwiftUI

struct MyTicketView: View {
    
    private let gridItem = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ZStack(alignment: .bottom) {
                        VStack {
                            Image(uiImage: R.image.coldPlay()!)
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width, height: 400)
                            Spacer(minLength: 110)
                        }
                        ticketInfoView
                        .padding()
                        .padding(.horizontal, 20)
                        .background(.white)
                        .cornerRadius(12)
                    }
                    
                    LazyVGrid(columns: gridItem, alignment: .leading, spacing: 8) {
                        Image(uiImage: R.image.kevinHeart()!)
                            .resizable()
                            .scaledToFill()
                        Image(uiImage: R.image.kevinHeart()!)
                            .resizable()
                            .scaledToFill()
                        Image(uiImage: R.image.kevinHeart()!)
                            .resizable()
                            .scaledToFill()
                        Image(uiImage: R.image.kevinHeart()!)
                            .resizable()
                            .scaledToFill()
                        Image(uiImage: R.image.kevinHeart()!)
                            .resizable()
                            .scaledToFill()
                        Image(uiImage: R.image.kevinHeart()!)
                            .resizable()
                            .scaledToFill()
                    }
                    .padding(.top, 26)
                }
            }
          uploadButton
            .padding(.bottom, 33)
        }
        .ignoresSafeArea()
        .background(Color(R.color.addTicketButton()!))
        
    }
}


extension MyTicketView {
    private var uploadButton: some View {
        Button {
            print("Upload")
        } label: {
            HStack {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                Text("Upload")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 40)
            .padding(.vertical, 15)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color(R.color.blue()!))
            )
        }
    }
    
    private var viewTicketButton: some  View {
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
    }
    
    private var ticketInfoView: some View {
        VStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text("16th Aug 2022 - 6:15pm")
                        .foregroundColor(Color(R.color.navyBlue()!))
                    ConcertStatusView(status: .Archived, color: Color(R.color.blue()!))
                }
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Coldplay - Music of the spheres")
                            .font(Font.system(.headline))
                            .fontWeight(.bold)
                        VStack(alignment: .leading) {
                            Text("Wembley Stadium")
                            Text("London - United Kingdom")
                                .foregroundColor(Color(R.color.navyBlue()!))
                        }
                    }
                    VStack(alignment: .center) {
                        Text("265")
                            .font(Font.system(.headline))
                            .fontWeight(.bold)
                        Text("Photos & Videos")
                            .foregroundColor(Color(R.color.navyBlue()!))
                    }
                }
            }
           viewTicketButton
            .padding(.top, 6)
            
        }
    }
}

struct MyTicketView_Previews: PreviewProvider {
    static var previews: some View {
        MyTicketView()
    }
}
