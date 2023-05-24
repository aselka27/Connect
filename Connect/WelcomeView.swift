//
//  WelcomeView.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image(uiImage: R.image.connect()!)
                .resizable()
                .frame(height: UIScreen.main.bounds.height/2)
                .ignoresSafeArea()
                .padding(.top)
              Spacer()
                VStack(spacing: 15) {
                    BlackButton(buttonText: "Login")
                    BlackButton()
            }
            Spacer()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
