//
//  GifteeBloodApp.swift
//  GifteeBlood
//
//  Created by sergio shaon on 8/11/20.
//

import SwiftUI
import IQKeyboardManagerSwift

@main
struct GifteeBloodApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(ViewRouter())
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        return true
    }
}

