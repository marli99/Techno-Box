//
//  SubmitButtonView.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/12.
//

import SwiftUI

struct SubmitButtonView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack{
            Text("ADD")
            
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
            }
            
                .padding(.vertical,10)
                .padding(.horizontal,16)
                .background(Capsule()
                                .strokeBorder(Color.white, lineWidth: 1.35))
                .accentColor(.white)
        })
    }
}

struct SubmitButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButtonView()
            .previewLayout(.sizeThatFits)
    }
}
