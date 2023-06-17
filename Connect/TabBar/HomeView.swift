//
//  HomeView.swift
//  Connect
//
//  Created by саргашкаева on 30.04.2023.
//

import SwiftUI
import UIKit

struct HomeView: View {
    @StateObject var viewModel = HomeViewModelImpl()
    
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HomeNavBar()
                    Text("Find events in")
                    Text("Popular in Barcelona")
                    UpcomingEventView()
                        .padding([.top, .bottom])
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(viewModel.events, id: \.id) { event in
                               ConcertInfo(event: event)
                                    .frame(width: UIScreen.main.bounds.width-32)
                                    .padding(.horizontal)
                                  
                            }
                        }
                    }
                  
                }
                .padding(.bottom, 90)
              
            }
           
        }
        .background(Color(R.color.addTicketButton()!))
    }
    
   
}

extension HomeView {
    private var concertsHeader: some View {
        HStack {
            Text("Your events")
                .font(.title.bold())
            Spacer()
            Button {
                print("add ticket")
            } label: {
                HStack {
                    Image(systemName: "plus")

                        .foregroundColor(.gray)
                    Text("Add ticket")
                        .foregroundColor(.gray)
                        .font(.callout)
                        .fontWeight(.bold)
                       
                }
                .padding(7)
               
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color(R.color.addTicketButton()!))

                )
            }
          
        }
        .padding(.horizontal, 24)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
