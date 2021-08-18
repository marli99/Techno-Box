//
//  LibraryView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/14.
//

import SwiftUI

struct MenuBarView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black
            ]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .trailing, spacing: 50){
                NavigationLink(
                    destination: TabletListView(),
                       label:{
                        Text("Tablet")
                        
                   })
                    .foregroundColor(.white)
                NavigationLink(
                    destination: LaptopListView(),
                       label:{
                        Text("Laptop")
                   })
                    .foregroundColor(.white)
                
                NavigationLink(
                    destination: DesktopListView(),
                       label:{
                        Text("Desktop")
                   })
                    .foregroundColor(.white)
                
                NavigationLink(
                    destination: PhoneListView(),
                       label:{
                        Text("Phone")
                   })
                    .foregroundColor(.white)
            }
        }
        
    }
}

struct MenuBarView_Previews: PreviewProvider {
    static var previews: some View {
        MenuBarView()
    }
}
