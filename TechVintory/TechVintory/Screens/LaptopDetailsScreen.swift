//
//  LaptopDetailsScreen.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/12.
//

import SwiftUI

struct LaptopDetailsScreen: View {
    
    var laptop: Laptop
    
    
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack{
                Image(systemName: laptop.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80, alignment: .leading)
                    .background(Color.blue)
                    .cornerRadius(8)
                
                VStack(alignment: .leading, spacing: 5){
                    Text(laptop.name)
                        .foregroundColor(.black)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(laptop.price)
                        .foregroundColor(.gray)
                        .font(.title3)
                }
            }
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                
                Image("logoWhite")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                
                Text("Welcome to Content View")
                    .foregroundColor(.white)

            }
        }
    }
}

struct LaptopDetailsScreen_Previews: PreviewProvider {
    static var previews: some View{
        LaptopDetailsScreen(laptop: LaptopData[0])
           
    }
}
