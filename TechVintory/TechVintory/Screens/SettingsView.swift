//
//  SettingsView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/17.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isDarkMode") var isDarkMode = false
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                GroupBox(label: HStack{
                    Text("About TechnoBox")
                    Spacer()
                    Image(systemName: "info.circle")
                }, content: {
                    Text("TechnoBox is a Technology Inventory System to keep track of their devices")
                        .padding()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                })
                .padding()
                Spacer()
                
                GroupBox(){
                    DisclosureGroup("Development Information"){
                        Divider().padding(.vertical, 2)
                        
                        HStack{
                            Image(systemName: "info.circle")
                            Text("Version")
                            Spacer()
                            Text("1.0.0")
                                .bold()
                        }
                        
                        Divider().padding(.vertical, 2)
                        
                        HStack{
                            Image(systemName: "info.circle")
                            Text("Developed by")
                            Spacer()
                            Text("Marli Correia")
                                .bold()
                        }
                        
                    }
                }.padding()
                
                    
                    
                GroupBox(){
                    HStack{
                        Text("Source Link")
                        Spacer()
                        Link(destination: URL(string: "https://github.com/marli99/Techno-Box")!, label: {
                            Text("GitHub")
                        })
                        Image(systemName: "arrow.up.right.square")
                    }.padding()
                }.padding()
                
                Picker("Mode", selection: $isDarkMode){
                    Text("Light")
                        .tag(false)
                    Text("Dark")
                        .tag(true)
                }.pickerStyle(SegmentedPickerStyle()).padding()
                
                .navigationTitle("Settings")
                .navigationBarItems(trailing: Button(action:
                    {print("Clicked")
                        presentationMode.wrappedValue.dismiss()
                    }, label:{
                    Image(systemName: "xmark")
            }))
            }.preferredColorScheme(isDarkMode ? .dark : .light)
    }
}
}
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

