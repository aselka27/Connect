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
    @State private var keyboardHeight: CGFloat = 0
    @Environment(\.dismiss) var dismiss
    @StateObject private var keyboardHandler = KeyboardHandler()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 70) {
            
            Text("Welcome back! Glad \nto see you, Again!")
                .font(.system(size: 30, weight: .bold))
                .padding(.horizontal, 22)
                .padding(.top, 70)
                .offset(y: -keyboardHeight)
            VStack(spacing: 15) {
                InputTextField(placeHolder: "Enter your email", enteredText: $viewModel.userInfo.email)
                PasswordTextField(placeHolder: "Enter your password" ,enteredText: $viewModel.userInfo.password)
                HStack {
                    Spacer()
                    Text("Forgot Password?")
                        .foregroundColor(Color(uiColor: .darkGray))
                        .bold()
                        .padding(.trailing, 22)
                }
            }
            VStack {
                BlackButton(buttonText: "Login") {
                    viewModel.signIn(user: viewModel.userInfo)
                }
                Spacer()
            }
            
        }
        .onReceive(keyboardHandler.$keyboardHeight) { height in
            keyboardHeight = height
        }
        .padding(.bottom, keyboardHandler.keyboardHeight/2)
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
        .background(NavigationLink(destination: MainView(), isActive: $viewModel.showMainView, label: {EmptyView()}).opacity(0))
        
    }
    
}
            
       

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

