//
//  PhoneView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/16.
//

import SwiftUI

struct PhoneView: View {
    var phone: Phone
    
    var body: some View {
        HStack{
            Image(phone.Image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .leading)
                .background(Color.black)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(phone.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(phone.price)
                    .foregroundColor(.gray)
                    .font(.title3)
            }
        }
    }
    
    
}

struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView(phone: PhoneData[0])
            .previewLayout(.sizeThatFits)
            .padding(4)
    }
}
