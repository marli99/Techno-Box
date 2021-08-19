//
//  ContentView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/07/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false

    
    var body: some View {
        
        
        NavigationView{
            
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.purple
            ]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 50){
                
//                .listRowBackground(Color.blue)
                
                HStack(alignment: .center){
                        NavigationLink(
                            destination: MenuBarView(),
                            label: {
                                Image("4295468")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .aspectRatio(contentMode: .fit)
                                    .accentColor(.white)
                                    .padding(.bottom, 100)
                                   
                            })
                    
                    Image("logoWhite")
                        .resizable()
                        .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, 30)
                    
                }
                
               
                
                        HStack(alignment: .center, spacing: 20){
                            VStack{
                                NavigationLink(
                                    destination: LaptopListView(),
                                    label:{
                                        Image("Laptop-PNG-Pic")
                                            .resizable()
                                            .background(Color.black)
                                            .cornerRadius(50)
                                            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .aspectRatio(contentMode: .fit)
                                        
                                       
                                    })
                                Text("LAPTOP")
                            }
                            .foregroundColor(.white)
                            
                           
                        
                            VStack{
                            NavigationLink(
                                destination: TabletListView(),
                                   label:{
                                    Image("tablet-png-6799")
                                        .resizable()
                                        .background(Color.black)
                                        .cornerRadius(50)
                                        .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .aspectRatio(contentMode: .fit)
                               })
                                Text("TABLET")
                            }
                            .foregroundColor(.white)
                           
                            
                        }
                    
                
                HStack(alignment: .center, spacing: 20){
                    VStack{
                    NavigationLink(
                        destination: PhoneListView(),
                           label:{
                            Image("imgbin_sharp-aquos-crystal-sharp-corporation-android-smartphone-png")
                                .resizable()
                                .background(Color.black)
                                .cornerRadius(50)
                                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fit)
                                
                            
                       })
                        Text("PHONE")
                    }
                    .foregroundColor(.white)
                    
                    VStack{
                        NavigationLink(
                            destination: DesktopListView(),
                               label:{
                                Image("Daco_2027329")
                                    .resizable()
                                    .background(Color.black)
                                    .cornerRadius(50)
                                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .aspectRatio(contentMode: .fit)
                                    
                                
                           })
                        Text("DEKTOP")
                    }
                    .foregroundColor(.white)
                    
                    
                } .padding(.bottom, 60)
                
              
                
                HStack(alignment: .center, spacing: 50){
                    Link(destination: URL(string: "https://www.facebook.com")!,label: {
                        Image("—Pngtree—facebook icon facebook logo fb_3560489")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                    })
                    
                    Link(destination: URL(string: "https://www.instagram.com")!,label: {
                        Image("6641c94e15a0be37af49a4250386c03e")
                            .resizable()
                            
                            .cornerRadius(50)
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                    })
                    
                    
                    Link(destination: URL(string: "https://www.twitter.com")!, label: {
                        Image("twitter-icon-logo-social-media-icon-png-and-vector-twitter-logo-pink-115629344286kzjqw2mow")
                            .resizable()
                            
                            .cornerRadius(50)
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                    })
                    
                        
                }
                .padding(.bottom, 70)
                .padding(.leading, 20)
                
            }
            
        }
    }.accentColor(.black)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
