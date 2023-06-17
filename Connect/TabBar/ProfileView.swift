//
//  ProfileView.swift
//  Connect
//
//  Created by саргашкаева on 4.05.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
                VStack(alignment: .center) {
                    Image("kevinHeart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .background(Circle().frame(width: 125, height: 125))
                    Text("Kevin Heart")
                        .font(.title.bold())
                    Text("kevin.heart@gmail.com")
                        .foregroundColor(.black)
                }
               Spacer()
            ZStack {
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Settings")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                           
                        }
                        Spacer()
                    }
                    .padding()
                    Spacer()
                    Button {
                        try? AuthServiceImpl.shared.signOut()
                    } label: {
                        Text("Logout")
                            .foregroundColor(.black)
                    }
                    
                    .cornerRadius(10)
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .border(Color.brown)
                    .padding(.horizontal, 20)
                    
                   

                    Spacer()
                }
                .padding(.top)
              
                           
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.5)
                .background(.white)
                .cornerRadius(40)
          
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(R.color.blue()!).opacity(0.5))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
