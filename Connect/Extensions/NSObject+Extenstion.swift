//
//  NSObject+Extenstion.swift
//  Connect
//
//  Created by саргашкаева on 30.04.2023.
//

import UIKit


extension NSObject {
    @objc var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    @objc var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
}
