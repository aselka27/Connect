//
//  ConnectApp.swift
//  Connect
//
//  Created by саргашкаева on 30.04.2023.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct ConnectApp: App {
    // register app delegate to Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            if AuthServiceImpl.shared.currenUser != nil {
                MainView()
            } else {
                WelcomeView()
            }
                    
            }
        }
    }

