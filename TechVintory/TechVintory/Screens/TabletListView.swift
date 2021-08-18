//
//  TabletListView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/14.
//

import SwiftUI

struct TabletListView: View {
    
    @StateObject var tabletViewModel: TabletViewModel = TabletViewModel()
    
    @State private var isShowingSettings = false
    
    var body: some View {
            NavigationView{
                List{
                    ForEach(tabletViewModel.TabletData.shuffled()){
                        item in
                        NavigationLink(
                            destination: TabletDetailsView(tablet: item),
                            label: {
                                TabletView(tablet: item)
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

struct TabletListView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            TabletListView()
        }
    }
}
