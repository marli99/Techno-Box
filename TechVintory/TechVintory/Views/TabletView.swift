//
//  TabletView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/14.
//

import SwiftUI

struct TabletView: View {
    var tablet: Tablet
    
    var body: some View {
        HStack{
            Image(tablet.Image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .leading)
                .background(Color.black)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(tablet.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(tablet.price)
                    .foregroundColor(.gray)
                    .font(.title3)
            }
        }
    }
}

struct TabletView_Previews: PreviewProvider {
    static var previews: some View {
        TabletView(tablet: TabletData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
