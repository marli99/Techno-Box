//
//  TechVintoryApp.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/07/29.
//

import SwiftUI

@main

struct TechVintoryApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                ContentView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }else{
                OnboardingView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
            
        }
    }
}
