//
//  EventImageView.swift
//  Connect
//
//  Created by саргашкаева on 12.06.2023.
//

import SwiftUI


class EventImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    
     func getImage(urlString: String) {
        Task { @MainActor in
            do {
               let downloadedImage = try await EventImageService.shared.getEventImageFor(url: urlString)
                self.image = downloadedImage
            } catch {
                print(error.localizedDescription)
            }
            
        }
    }
    
}


struct EventImageView: View {
    
    @StateObject var viewModel = EventImageViewModel()
    var urlStringl: String
    var body: some View {
        ZStack {
            if let image = viewModel.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else if viewModel.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.secondary)
            }
        }
        .onAppear {
            viewModel.getImage(urlString: urlStringl)
        }
      
    }
       
}

struct EventImageView_Previews: PreviewProvider {
    static var previews: some View {
        EventImageView(urlStringl: "https://s1.ticketm.net/dam/a/128/3d4b8ab5-9062-4c04-a377-5111f8c53128_TABLET_LANDSCAPE_3_2.jpg")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
