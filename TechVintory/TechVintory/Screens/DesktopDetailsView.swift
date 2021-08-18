//
//  DesktopDetailsView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/16.
//

import SwiftUI

struct DesktopDetailsView: View {
    
    var desktop: Desktop
    
    
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image(desktop.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(desktop.name)
                            .foregroundColor(.white)
                            .font(.title)
                        Text(desktop.price)
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                    
                    
                }
                Text(desktop.description)
                    .foregroundColor(.white
                    )
                    .padding(30)
                    .font(.title3)
                
                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct DesktopDetailsView_Previews: PreviewProvider {
    static var previews: some View{
        DesktopDetailsView(desktop: DesktopData[0])
           
    }
}


