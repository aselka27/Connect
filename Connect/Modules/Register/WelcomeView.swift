//
//  WelcomeView.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var showLogin: Bool = false
    @State var showRegister: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Image(uiImage: R.image.connect()!)
                    .resizable()
                    .frame(height: UIScreen.main.bounds.height/2)
                    .ignoresSafeArea()
                    .padding(.top)
                  Spacer()
                    VStack(spacing: 15) {
                    
                        BlackButton(buttonText: "Login") {
                        showLogin = true
                        }
                        BlackButton {
                            showRegister = true
                        }
                }
                Spacer()
            }
            
            .background(
                NavigationLink(destination: LoginView(), isActive: $showLogin) {
                    EmptyView()
                }
                    .hidden()
            )
            .background(
                NavigationLink(destination: RegisterView(), isActive: $showRegister) {
                    EmptyView()
                }
                    .hidden()
            )
        }
        .navigationViewStyle(.stack)
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
