//
//  ContentView.swift
//  Connect
//
//  Created by саргашкаева on 30.04.2023.
//

import SwiftUI

var tabs = ["house", "heart", "person"]

struct CustomTabView: View {
    
    @State var selectedTab = tabs[0]
    @State var edge = UIApplication
        .shared
        .connectedScenes
        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
        .first { $0.isKeyWindow }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $selectedTab) {
                NavigationView {
                    HomeView()
                        .tag(tabs[0])
                }
                .navigationViewStyle(.stack)
                NavigationView {
                    MyTicketView()
                         .tag(tabs[1])
                }
                .navigationViewStyle(.stack)
                NavigationView {
                    ProfileView()
                         .tag(tabs[2])
                }
                .navigationViewStyle(.stack)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea(.all)
            
            HStack(spacing: 0) {
                ForEach(tabs, id: \.self) { image  in
                    TabButton(image: image, selectedTab: $selectedTab)
                    if image != tabs.last {
                        Spacer(minLength: 0)
                    }
                }
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 5)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(color: .black.opacity(0.15), radius: 5 , x: 5, y: 5)
            .shadow(color: .black.opacity(0.15), radius: 5 , x: -5, y: -5)
            .padding(.horizontal)
            .padding(.bottom, edge!.safeAreaInsets.bottom == 0 ? 20 : 0)
            // ignoring tab view elevation
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(.keyboard, edges: .bottom)
        
    }
}


struct TabButton: View {
    
    var image: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button {
            selectedTab = image
        } label: {
            Image(systemName: image)
                .renderingMode(.template)
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(selectedTab == image ? Color(.link) : Color.black.opacity(0.4))
                .padding()
        }
        
    }
}

//struct CustomTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabView()
//    }
//}
