//
//  MainView.swift
//  Connect
//
//  Created by саргашкаева on 4.05.2023.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: TabElement = .home
  
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(TabElement.allCases, id: \.rawValue) { tab in
                        switch tab {
                        case .home:
                            NavigationView {
                                HomeView().tag(tab)
                            }
                        case .discover:
                            TicketDetailView().tag(tab)
                        case .profile:
                            ProfileView().tag(tab)
                        }
                        
                        }
                    }
                }
                VStack {
                    Spacer()
                    CustomTabBar(selectedTab: $selectedTab)
                }.shadow(color: .black.opacity(0.4), radius: 2, x: 0, y: 2)
            }
            .padding(.bottom, 15)
            .ignoresSafeArea(edges: .bottom)
           
           
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
