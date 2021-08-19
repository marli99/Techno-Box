//
//  Splash.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/07/29.
//

import SwiftUI

struct LaptopListView: View {
//    var laptops : [Laptop] = LaptopData
    
    @StateObject var laptopViewModel: LaptopViewModel = LaptopViewModel()
    
    @State private var isShowingSettings = false
    
    var body: some View {
            
            NavigationView{
                
                
                List{
                    ForEach(laptopViewModel.LaptopData.shuffled()){
                        item in
                        NavigationLink(
                            destination: LaptopDetailsView(laptop: item),
                            
                            label: {
                                LaptopView(laptop: item)
                                    .padding(.vertical,5)
                            })
                        
                    }
                    
                }
                
                .navigationTitle("Laptops")
                .navigationBarItems(trailing: Button(action: {
                    print("settings clicked")
                        isShowingSettings = true
                }){
                        Image(systemName: "gear")
                            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .accentColor(.blue)
                                                
                }
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                })
                
            }
            
            
            .accentColor(.white)
            
    }
    
}
        
           

struct LaptopListView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            LaptopListView()
        }
    }
}
