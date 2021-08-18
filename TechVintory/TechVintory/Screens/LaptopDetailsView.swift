//
//  LaptopDetailsScreen.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/12.
//

import SwiftUI

struct LaptopDetailsView: View {
    
    var laptop: Laptop
    
    
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image(laptop.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(laptop.name)
                            .foregroundColor(.white)
                            .font(.title)
                        Text(laptop.price)
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                    
                    
                }
                Text(laptop.description)
                    .foregroundColor(.white
                    )
                    .padding(30)
                    .font(.title3)
                
                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct LaptopDetailsView_Previews: PreviewProvider {
    static var previews: some View{
        LaptopDetailsView(laptop: LaptopData[0])
           
    }
}
