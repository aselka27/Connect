//
//  LoginView.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI
import ExytePopupView

struct LoginView: View {
    @StateObject var viewModel = LoginViewModelImpl()
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            
            Image(uiImage: R.image.connect()!)
                .resizable()
                .frame(width: 400 ,height: 200)
                
            Text("Welcome back! Glad \nto see you, Again!")
                .font(.system(size: 30, weight: .bold))
                .padding(.horizontal, 22)
            VStack(spacing: 15) {
                InfoTextField(placeHolder: "Enter your email", enteredText: $viewModel.userInfo.email)
                PasswordTextField(placeHolder: "Enter your password" ,enteredText: $viewModel.userInfo.password)
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
        
        .ignoresSafeArea(edges: .top)
        .background(NavigationLink(destination: MainView(), isActive: $viewModel.showMainView, label: {EmptyView()}).opacity(0))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: EmptyView())
        .popup(isPresented: $viewModel.showErrorAlert) {
            ErrorAlert(text:viewModel.errorText)
        } customize: {
            $0
                .type(.floater(verticalPadding: 10, useSafeAreaInset: true))
                .position(.top)
                .animation(.spring())
                .closeOnTapOutside(true)
                .backgroundColor(.black.opacity(0.5))
        }
        

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
