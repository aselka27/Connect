//
//  ProfileView.swift
//  Connect
//
//  Created by саргашкаева on 4.05.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            VStack {
                VStack(alignment: .center, spacing: 8) {
                    Image("kevinHeart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    Text("david.lee@gmail.com")
                    Text("David Lee")
                        .font(.largeTitle.bold())
                }
                    HStack {
                        Text("My interests")
                            .font(.title2.italic())
                        Spacer()
                    }
                    .padding(.leading, 30)
                    .padding(.top, 30)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(alignment: .top) {
                        TagView(tag: "Taylor Swift")
                        TagView(tag: "Drake")
                        TagView(tag: "Taylor Swift")
                        TagView(tag: "Drake")
                        TagView(tag: "Taylor Swift")
                        TagView(tag: "Drake")
                        
                    }
                    .padding(.horizontal)
                }
                    Spacer()
            }
        }
        .background(Color(R.color.addTicketButton()!))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
