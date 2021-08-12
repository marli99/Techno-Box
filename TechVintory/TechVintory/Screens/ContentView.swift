//
//  ContentView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/07/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue
            ]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 40){
                
                HStack{
                    
                    Button(action:{print("hello")},
                           label:{
                            Image("4295468")
                                .resizable()
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fit)
                                .padding(20)
                                                       
                       })
                    
                    Image("logoWhite")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                    
                    
                }
                    HStack(alignment: .center, spacing: 20){
                        Button(action:{print("hello")},
                               label:{
                                Image("Laptop-PNG-Pic")
                                    .resizable()
                                    .background(Color.black)
                                    .cornerRadius(50)
                                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .aspectRatio(contentMode: .fit)
                                    
                                
                           })
                        
                        Button(action:{print("hello")},
                               label:{
                                Image("tablet-png-6799")
                                    .resizable()
                                    .background(Color.black)
                                    .cornerRadius(50)
                                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .aspectRatio(contentMode: .fit)
                           })
                    }
                HStack(alignment: .center, spacing: 20){
                    Button(action:{print("hello")},
                           label:{
                            Image("imgbin_sharp-aquos-crystal-sharp-corporation-android-smartphone-png")
                                .resizable()
                                .background(Color.black)
                                .cornerRadius(50)
                                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fit)
                                
                            
                       })
                    
                    Button(action:{print("hello")},
                           label:{
                            Image("Daco_2027329")
                                .resizable()
                                .background(Color.black)
                                .cornerRadius(50)
                                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fit)
                                
                            
                       })
                }
  
            }
            
            
        }
        
        
        
                
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
