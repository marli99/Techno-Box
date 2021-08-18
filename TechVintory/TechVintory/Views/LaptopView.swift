//
//  LaptopView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/07/29.
//

import SwiftUI

struct LaptopView: View {
    var laptop: Laptop
    
    var body: some View {
        HStack{
            Image(laptop.Image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .leading)
                .background(Color.black)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(laptop.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(laptop.price)
                 
                    .font(.title3)
            }
        }
    }
    
    
}

struct LaptopView_Previews: PreviewProvider {
    static var previews: some View {
        LaptopView(laptop: LaptopData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
