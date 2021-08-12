//
//  TechVintoryApp.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/07/29.
//

import SwiftUI

@main
struct TechVintoryApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
