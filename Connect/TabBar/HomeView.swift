//
//  HomeView.swift
//  Connect
//
//  Created by саргашкаева on 30.04.2023.
//

import SwiftUI
import UIKit

struct HomeView: View {
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HomeNavBar()
                    concertsHeader
                    .padding(.top, 27)
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 16) {
                            MyConcertInfo()
                            MyConcertInfo()
                        }
                        .padding(.horizontal, 24)
                    }
                    
                    Text("Explore concerts")
                        .font(.title.bold())
                        .padding(.top, 28)
                        .padding(.horizontal, 24)
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ConcertInfo()
                            ConcertInfo()
                        }
                    }
                  
                }
              
            }
           
        }
//        .padding(.leading, 24)
        .background(Color(R.color.addTicketButton()!))
        
    }
}

extension HomeView {
    private var concertsHeader: some View {
        HStack {
            Text("Your concerts")
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
