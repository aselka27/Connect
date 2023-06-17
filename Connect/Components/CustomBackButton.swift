//
//  CustomBackButton.swift
//  Connect
//
//  Created by саргашкаева on 9.06.2023.
//

import SwiftUI

struct CustomBackButton: View {
    var body: some View {
        Image(systemName: "chevron.left")
            .font(.system(size: 17, weight: .semibold))
            .foregroundColor(.black)
    }
}

struct CustomBackButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackButton()
    }
}
