//
//  SwiftUIView.swift
//  Connect
//
//  Created by саргашкаева on 14.06.2023.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        HStack(spacing: 10) {
            Image(uiImage: R.image.coldPlay()!)
                .resizable()
                .cornerRadius(8)
                .frame(width: 80, height: 80)
            VStack(alignment: .leading) {
                Text("19 Apr 20 pm")
                Text("ColdPlay: Spheres Tour")
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(1)
                Text("Soldier Field")
            }
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
