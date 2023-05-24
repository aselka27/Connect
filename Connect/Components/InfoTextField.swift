//
//  InfoTextField.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI

struct InfoTextField: View {
    
    var placeHolder = ""
    @Binding var enteredText: String
    var body: some View {
        TextField(placeHolder, text: $enteredText)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .padding(8)
            .background( RoundedRectangle(cornerRadius: 8)
                
                .fill(Color(uiColor: R.color.infoTextFieldFillColor()!))
//                .strokeBorder(Color.gray, lineWidth: 1)
            )
            .padding(.horizontal, 22)
    }
}

struct InfoTextField_Previews: PreviewProvider {
    static var previews: some View {
        InfoTextField(placeHolder: "username", enteredText: .constant("aselka"))
    }
}
