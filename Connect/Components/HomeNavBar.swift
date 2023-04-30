//
//  HomeNavBar.swift
//  Connect
//
//  Created by саргашкаева on 30.04.2023.
//

import SwiftUI

struct HomeNavBar: View {
    var body: some View {
        HStack {
            Text("Welcome, Lee")
                .foregroundColor(Color(R.color.blue()!))
                .font(Font.system(.largeTitle))
                .fontWeight(.bold)
            Spacer()
            ZStack {
                Circle()
                    .frame(width: 45, height: 45)
               
            }
        }
        .padding(.horizontal, 24)
    }
}

struct HomeNavBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavBar()
    }
}
