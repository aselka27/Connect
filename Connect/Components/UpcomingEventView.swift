//
//  UpcomingEventView.swift
//  Connect
//
//  Created by саргашкаева on 13.06.2023.
//

import SwiftUI

struct UpcomingEventView: View {
    var body: some View {
        ZStack {
            Image(uiImage: R.image.coldPlay()!)
                .resizable()
            VStack {
                Spacer()
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Coldplay : Music of the Spheres")
                            .foregroundColor(.white)
                            .font(.caption)
                            .fontWeight(.black)
                        HStack {
                            Text("Barcelona Bung Karno Stadium")
                                .foregroundColor(.white)
                                .fontWeight(.black)
                                .lineLimit(1)
                                
                                .font(.caption)
                                
                            Spacer()
                        }
                        HStack(spacing: 8){
                            Image(systemName: "calendar")
                                .foregroundColor(.white)
                                .font(.caption)
                                
                            Text("Novermber 15 2023")
                                .foregroundColor(.white)
                                .font(.caption)
                                .fontWeight(.black)
                        }
                    }
                    .padding(.vertical, 16)
                    .padding(.leading)
                    .frame(maxWidth: .infinity)
                    .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .padding(.bottom, 10)
           
        }
        .frame(maxWidth: .infinity)
        .frame(height: 186)
        .cornerRadius(10)
        .padding(.horizontal)
       
    }
}

struct UpcomingEventView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingEventView()
            .previewLayout(.sizeThatFits)
    }
}


struct VisualEffectBlur: UIViewRepresentable {
    var blurStyle: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: blurStyle)
    }
}


