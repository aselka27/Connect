//
//  LoginView.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI
import ExytePopupView
import Combine

struct LoginView: View {
    @StateObject var viewModel = LoginViewModelImpl()
    @State private var keyboardHeight: CGFloat = 90
    var body: some View {
        
    
            VStack(alignment: .leading, spacing: 32) {
                    
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
        .padding(.bottom, keyboardHeight)
        .onReceive(Publishers.keyboardHeight) { self.keyboardHeight = $0 }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
