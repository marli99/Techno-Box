//
//  LaptopViewModel.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/12.
//

import SwiftUI

class LaptopViewModel: ObservableObject{
    
    @Published var LaptopData: [Laptop] = []
    
    func getLaptop(){
        let laptops: [Laptop] = [
            Laptop(name: "Lenovo", Image: "pencil", price: "R10 000", description: "Lenovo MICROSOFT windoes 10"),
            Laptop(name: "Mac book", Image: "pencil", price: "R10 000", description: "Lenovo MICROSOFT windoes 10"),
            Laptop(name: "Acer", Image: "pencil", price: "R10 000", description: "Lenovo MICROSOFT windoes 10"),
            Laptop(name: "HP", Image: "pencil", price: "R10 000", description: "Lenovo MICROSOFT windoes 10"),
            Laptop(name: "MSI", Image: "pencil", price: "R10 000", description: "Lenovo MICROSOFT windoes 10"),
            Laptop(name: "Alian", Image: "pencil", price: "R10 000", description: "Lenovo MICROSOFT windoes 10")
        ]
        
        LaptopData.append(contentsOf: laptops)
    }
}
