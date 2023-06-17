//
//  BlackButton.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI

struct BlackButton: View {
    var buttonText = "Register"
    var tapped: (()->())?
    var body: some View {
        Button {
            tapped?()
        } label: {
            Text(buttonText)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(RoundedRectangle(cornerRadius: 8))
      
        .padding(.horizontal, 22)

    }
}

struct BlackButton_Previews: PreviewProvider {
    static var previews: some View {
        BlackButton(tapped: {
            
        })
    }
}
