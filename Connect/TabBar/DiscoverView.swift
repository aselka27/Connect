//
//  DiscoverView.swift
//  Connect
//
//  Created by саргашкаева on 13.06.2023.
//

import SwiftUI



struct DiscoverView: View {
    @State var searchText: String = ""
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                    navigationBar
                    .padding(.top, 70)
                    HStack(spacing: 12) {
                        Image(systemName: "magnifyingglass")
                            .padding(.leading)
                        TextField("Search event..", text: $searchText)
                    }
                    .frame(height: 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
//                    .padding(.horizontal, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 8) {
                        ForEach(EventType.allCases, id: \.rawValue) { type in
                            EventTypeView(eventType: type)
                                
                        }
                    }
                }
                .padding(.top)
                .padding(.bottom, 40)
                HStack {
                    Text("Upcoming Events")
                        .font(.title)
                        .fontWeight(.bold)
//                        .padding(.leading)
                    Spacer()
                    Text("See all")
                        .padding(.trailing)
                        .foregroundColor(.gray)
                }
                LazyVStack(alignment: .leading) {
                    ForEach(0..<10) { event in
                        EventView()
//                            .padding(.leading)
                            .padding(.bottom)
                    }
                 
                }
                    
    //                ScrollView(.horizontal) {
    //                    LazyHStack(spacing: 7) {
    //                        ForEach(0..<5) { event in
    //                            UpcomingEventView()
    //                                .frame(width: UIScreen.main.bounds.width-32)
    //
    //                        }
    //                    }
    //                }.frame(height: 200)
                
              Spacer()
                
           
            }
            .padding(.horizontal, 20)
        }
        .background(Color(R.color.addTicketButton()!))
        .ignoresSafeArea()
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

extension DiscoverView {
    var navigationBar: some View {
        VStack(alignment: .leading) {
            Text("Find")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Trending Events")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(R.color.purple()!))
        }
      
    }
}
