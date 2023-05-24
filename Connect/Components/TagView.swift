//
//  TagView.swift
//  Connect
//
//  Created by саргашкаева on 4.05.2023.
//

import SwiftUI

struct TagView: View {
    var tag: String
    var body: some View {
        Text(tag)
            .padding()
            .background(Color(R.color.navyBlue()!).opacity(0.5))
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(tag: "Drake")
    }
}
