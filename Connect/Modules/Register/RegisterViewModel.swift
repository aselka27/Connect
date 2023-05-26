//
//  RegisterViewModel.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI



protocol RegisterViewModel: ObservableObject {
    func registerUser(with data: SignUpUserForm) async
    var alertMessage: String { get set }
}


 class RegisterViewModelImpl: RegisterViewModel, ObservableObject {
    
    @Published var alertMessage: String = ""
    @Published var userData: SignUpUserForm = SignUpUserForm(username: "", email: "", confirmPassword: "", password: "", city: "", country: "")
   
     func registerUser(with data: SignUpUserForm)  {
       Task { @MainActor in
           do {
              try await AuthServiceImpl.shared.signUp(user: data)
               print("Success")
               alertMessage = "You have successfully created an account"
           } catch {
               print("Error: \(error.localizedDescription)")
           }
           
          
       }
    }
}
