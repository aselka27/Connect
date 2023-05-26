//
//  LoginView.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModelImpl()
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            Text("Welcome back! Glad \nto see you, Again!")
                .font(.system(size: 30, weight: .bold))
                .padding(.horizontal, 22)
            VStack(spacing: 15) {
                InfoTextField(placeHolder: "Enter your email", enteredText: $viewModel.userInfo.email)
                InfoTextField(placeHolder: "Enter your password" ,enteredText: $viewModel.userInfo.password)
            }
            HStack {
                Spacer()
                    Text("Forgot Password?")
                    .foregroundColor(Color(uiColor: .darkGray))
                    .bold()
                    .padding(.trailing, 22)
            }
            BlackButton(buttonText: "Login") {
                viewModel.signIn(user: viewModel.userInfo)
            }
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
