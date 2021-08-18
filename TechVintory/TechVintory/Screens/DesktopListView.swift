//
//  DesktopListView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/16.
//

import SwiftUI

struct DesktopListView: View {
    
    @StateObject var desktopViewModel: DesktopViewModel = DesktopViewModel()
    
    @State private var isShowingSettings = false
    
    var body: some View {
            NavigationView{
                List{
                    ForEach(desktopViewModel.DesktopData.shuffled()){
                        item in
                        NavigationLink(
                            destination: DesktopDetailsView(desktop: item),
                            label: {
                                DesktopView(desktop: item)
                                    .padding(.vertical,5)
                            })
                    }
                }
                
                .navigationTitle("Desktops")
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

struct DesktopListView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            DesktopListView()
        }
    }
}


