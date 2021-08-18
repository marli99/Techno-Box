//
//  TabletDetailsView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/14.
//

import SwiftUI

struct TabletDetailsView: View {
    
    var tablet: Tablet
    
    
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image(tablet.Image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200, alignment: .leading)
//                    .background(Color.blue)
                    .cornerRadius(8)

                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(tablet.name)
                            .foregroundColor(.white)
                            .font(.title)
                        Text(tablet.price)
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                    
                    
                }
                Text(tablet.description)
                    .foregroundColor(.white
                    )
                    .padding(30)
                    .font(.title3)
                
                SubmitButtonView()
            }
            
            
           
            
        }
    }
}

struct TabletDetailsView_Previews: PreviewProvider {
    static var previews: some View{
        TabletDetailsView(tablet: TabletData[0])
           
    }
}
