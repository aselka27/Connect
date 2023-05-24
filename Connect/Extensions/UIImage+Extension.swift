//
//  UIImage+Extension.swift
//  Connect
//
//  Created by саргашкаева on 6.05.2023.
//

import UIKit


extension UIImage {

    convenience init?(barcode: String) {
        let data = barcode.data(using: .ascii)
        guard let filter = CIFilter(name: "CICode128BarcodeGenerator") else {
            return nil
        }

        filter.setValue(data, forKey: "inputMessage")
        guard let ciImage = filter.outputImage else {
            return nil
        }

        self.init(ciImage: ciImage)
    }

}
