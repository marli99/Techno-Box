//
//  File.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/07/30.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View{
        TabView{
            OnboardingCardView(image: "78908", title: "Welcome to Techno Box", description: "Techno Box is a mobile library application, for all you technoloy cravings")
            
            OnboardingCardView(image: "98b0208e5a0dd6e7b8b7b3d0959d07a5", title: "How it works", description: "You can add your tech products into your to take stock of your products")
            
            OnboardingCardView(image: "360_F_286026740_xWkobcEk5g38qrH7cpfeImAnlUUSIrc5", title: "How it works", description: "Users can scroll trought various items and buy them with a click of a button!")
        }
        .tabViewStyle(PageTabViewStyle())
//        .ignoresSafeArea()
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View{
            OnboardingView()
           
    }
}
