//
//  RegisterView.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @StateObject var viewModel = RegisterViewModelImpl()
   
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 30) {
                Text("Hello! Register to get \nstarted")
                    .font(.system(size: 28, weight: .bold))
                    .padding(.horizontal, 22)
                VStack(spacing: 12) {
                    InfoTextField(placeHolder: "Username", enteredText: $viewModel.userData.username)
                    InfoTextField(placeHolder: "Email", enteredText: $viewModel.userData.email)
                    PasswordTextField(placeHolder: "Password", enteredText: $viewModel.userData.password)
                    PasswordTextField(placeHolder: "Confirm Password", enteredText: $viewModel.userData.confirmPassword)
                }
                BlackButton {
                    viewModel.registerUser(with: viewModel.userData)
                }
            }
        }
        .navigationViewStyle(.stack)
        
       
           

        }
    }

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(viewModel: RegisterViewModelImpl())
    }
}
