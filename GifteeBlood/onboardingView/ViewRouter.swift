//
//  viewRouter.swift
//  GifteeBlood
//
//  Created by sergio shaon on 28/1/21.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: String
    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "lottieView"
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3.0) {
                self.currentPage = "loginSignupView"
            }
        } else {
            currentPage = "loginSignupView"
        }
    }
    
    
    
}
