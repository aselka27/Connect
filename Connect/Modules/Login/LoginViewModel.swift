//
//  LoginViewModeel.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import Foundation


protocol LoginViewModel: AnyObject {
    func signIn(user: SignInUserForm)
    var userInfo: SignInUserForm { get set }
}


class LoginViewModelImpl: LoginViewModel, ObservableObject {
   
    @Published var userInfo = SignInUserForm(email: "", password: "")
    
    func signIn(user: SignInUserForm) {
        Task { @MainActor in
            do {
             let user = try await AuthServiceImpl.shared.signIn(user: user)
                print(user.uid)
            } catch {
                print("Error signing in the user: \(error.localizedDescription)")
            }
        }
    }
    
    
}
