//
//  BarcodeView.swift
//  Connect
//
//  Created by саргашкаева on 6.05.2023.
//

import SwiftUI
import UIKit
import CoreImage.CIFilterBuiltins

struct BarcodeView: View {
    let barcodeNumber = "123456"
    var body: some View {
        VStack {
            BarCodeView(barcode: "1234567890")
                .frame(height: 120)
            
        }
      }
}

struct BarcodeView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeView()
    }
}



struct BarCodeView: UIViewRepresentable {
    let barcode: String
    func makeUIView(context: Context) -> UIImageView {
        UIImageView()
    }

    func updateUIView(_ uiView: UIImageView, context: Context) {
        uiView.image = UIImage(barcode: barcode)
    }
}
