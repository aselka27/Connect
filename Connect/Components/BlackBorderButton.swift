//
//  BlackBorderButton.swift
//  Connect
//
//  Created by саргашкаева on 24.05.2023.
//

import SwiftUI

struct BlackBorderButton: View {
    var buttonText = "Register"
    
    var body: some View {
        Button {
            
        } label: {
            Text(buttonText)
                .foregroundColor(.black)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color(.black), lineWidth: 1))
      
        .padding(.horizontal, 22)
    }
}

struct BlackBorderButton_Previews: PreviewProvider {
    static var previews: some View {
        BlackBorderButton()
    }
}
