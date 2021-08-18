//
//  PhoneViewModel.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/16.
//

import SwiftUI


class PhoneViewModel: ObservableObject{
    
    @Published var PhoneData: [Phone] = []
    
    init(){
        getPhones()
    }
    
    func getPhones(){
        
        let phones: [Phone] = [
            Phone(name: "Lenovo Vibe K5", Image: "pngegg.jhgpng", price: "R1 500", description: "Key Features: MediaTek MT8321 processor 1.3Ghz, 1GB Memory, 16GB Storage, Integrated ARM Mali-400 GPU Graphics, 5-point Multi-touch, 7 HD Screen, 3G  and 1 Year Warranty"),
            Phone(name: "Samsung Galaxy S21", Image: "galaxyS21", price: "R13 000", description: "Key features: Windows 10 Home in S Mode, Vivid 10.5, PixelSense™ Touch Display, Memory: 4GB RAM, Storage: 64GB Flash storage, Intel® Pentium® Gold Processor 4425Y, 10.5 hours typical usage battery life, Detachable type cover sold separately"),
            Phone(name: "Xiaomi Redmi 9A", Image: "Daco_5145630", price: "R5 000", description: "Features: Xiaomi Redmi 9A features the fast and smooth MediaTek Helio G25, an octa-core gaming chipset optimized to provide uninterrupted gaming, fluid daily use, and longer battery life. Featuring a massive 6.53” Dot Drop display, Redmi 9A is large and immersive, providing an amazing video and gaming experience. It’s easy on the eyes, and is certified for low blue light by Germany’s TÜV Rheinland. The AI optimized 13MP rear camera quickly and easily captures crisp and clear images in a variety of situations. Kaleidoscope effects add fun to your videos, while Palm Shutter lets you conveniently snap photos with the 5MP selfie camera. A 5000mAh high-capacity battery powers Redmi 9A through days of use. Our special process enhances the lifespan of the Redmi 9A battery to provide optimum charging and recharging for years of reliable use."),
            Phone(name: "Blackview A70", Image: "2.2_1_large", price: "R2 400", description: "Key Features: 6.517” Waterdrop Screen, Android 11, 13MP Rear Camera, 5MP Front Camera, 5380mAh Battery, 3GB RAM + 32GB ROM, Octa-Core Processor, Dual SIM, GPS, GLONASS, Face and Fingerprint Unlock"),
            Phone(name: "Huawei P40 Lite E", Image: "p40lite-silver", price: "R3 300", description: "The Huawei P40 lite uses HMS (Huawei Mobile Service). GMS (Google Mobile Service) is not pre-installed when this phone is purchased. Any applications or services related to GMS may not work on this device. Before you purchase this phone, you fully understand and accept the device’s default factory settings, including hardware specifications and the software configurations."),
            Phone(name: "Samsung Galaxy Z Fold", Image: "Samsung-Galaxy-Z-Fold-2-Black", price: "41 000", description: "Meet the phone that's changing the shape of the future. The world's number one foldable, this cutting-edge smartphone puts powerful performance, foldable glass, and an all-day battery all in the palm of your hand. The next chapter of mobile is unfolding. The future of mobile comes in two rich colors —Mystic Black and Mystic Bronze. Pick black for a premium and timeless look. Or go for bronze to stand out in a crowd.COVER SCREEN, Folded, a fully functional smartphone, When folded shut, Galaxy Z Fold2 5G is a cutting-edge smartphone with a 6.2-inch screen.3 The expansive display gives you more room to play — perfect for texting, talking, and gaming. MAIN SCREEN, Unfolded, your view into a grander world ,Made from Samsung Ultra Thin Glass, the 7.6-inch foldable display opens to deliver the rich colors of Dynamic AMOLED 2X.4 The screen emits less blue light, so you can unfold to a tablet-sized viewing experience and enjoy for hours on end, while minimizing eye strain."),
            Phone(name: "Samsung Galaxy S10", Image: "Lkisspng-samsung-galaxy-s1-5g-samsung-galaxy-note-8-samsun-5d4b9d9f032e42.845975461565236639013", price: "R4 000", description: "Samsung · Galaxy · Galaxy S · Galaxy S10 · Android · 6.1 inches screen · Fingerprint Scanner · 10 MP Front Camera · 16 MP Rear Camera · Smartphone, Samsung Galaxy S10 Prism Black A new design The Galaxy S10 redefines the Galaxy S style, creating a new standard. The secret of the Galaxy S10’s state-of-the-art technology is in its screen.")
            
        ]
        PhoneData.append(contentsOf: phones)
    }
}
