//
//  RegisterView.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    var body: some View {
       
        VStack(alignment: .leading, spacing: 30) {
            Text("Hello! Register to get \nstarted")
                .font(.system(size: 28, weight: .bold))
                .padding(.horizontal, 22)
            VStack(spacing: 12) {
                InfoTextField(placeHolder: "Username", enteredText: $name)
                InfoTextField(placeHolder: "Email", enteredText: $name)
                InfoTextField(placeHolder: "Password", enteredText: $name)
                InfoTextField(placeHolder: "Confirm Password", enteredText: $name)
            }
            BlackButton()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
