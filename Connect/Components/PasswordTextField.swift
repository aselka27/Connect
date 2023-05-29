//
//  PasswordTextField.swift
//  Connect
//
//  Created by саргашкаева on 25.05.2023.
//

import SwiftUI

struct PasswordTextField: View {
    
    var placeHolder = ""
    @Binding var enteredText: String
    var body: some View {
        SecureField(placeHolder, text: $enteredText)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .padding(8)
            .background( RoundedRectangle(cornerRadius: 8)
                .fill(Color(uiColor: R.color.infoTextFieldFillColor()!))
            )
            .padding(.horizontal, 22)
    }
}

