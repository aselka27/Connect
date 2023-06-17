//
//  ErrorAlert.swift
//  Connect
//
//  Created by саргашкаева on 29.05.2023.
//

import SwiftUI

struct ErrorAlert: View {
    var text:String
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
            .background(Color(R.color.red()!))
            .cornerRadius(20)
            .padding(.horizontal, 16)
    }
}


struct ErrorAlert_Previews: PreviewProvider {
    static var previews: some View {
        ErrorAlert(text: "")
    }
}
