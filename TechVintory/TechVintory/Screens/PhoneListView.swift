//
//  PhoneListView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/16.
//

import SwiftUI

struct PhoneListView: View {
    
    @StateObject var phoneViewModel: PhoneViewModel = PhoneViewModel()
    
    @State private var isShowingSettings = false
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some View {
            NavigationView{
                List{
                    ForEach(phoneViewModel.PhoneData.shuffled()){
                        item in
                        NavigationLink(
                            destination: PhoneDetailsView(phone: item),
                            label: {
                                PhoneView(phone: item)
                                    .padding(.vertical,5)
                            })
                        
                    }
                }
                
                .navigationTitle("Phones")
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
            .preferredColorScheme(isDarkMode ? .dark : .light)
    }
    
}

struct PhoneListView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            PhoneListView()
        }
    }
}

