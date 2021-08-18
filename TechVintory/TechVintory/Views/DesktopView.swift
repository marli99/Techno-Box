//
//  DesktopView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/16.
//

import SwiftUI

struct DesktopView: View {
    var desktop: Desktop
    
    var body: some View {
        HStack{
            Image(desktop.Image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .leading)
                .background(Color.black)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(desktop.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(desktop.price)
                    .foregroundColor(.gray)
                    .font(.title3)
            }
        }
    }
    
    
}

struct DesktopView_Previews: PreviewProvider {
    static var previews: some View {
        DesktopView(desktop: DesktopData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
