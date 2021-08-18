//
//  DesktopViewModel.swift
//  TechVintory
//
//  Created by Marli Correia on 2021/08/16.
//

import SwiftUI


class DesktopViewModel: ObservableObject{
    
    @Published var DesktopData: [Desktop] = []
    
    init(){
        getDesktops()
    }
    
    func getDesktops(){
        
        let desktops: [Desktop] = [
            Desktop(name: "Intel Celeron All-in-One Desktop", Image: "intel", price: "R7 000", description: "Operating System: Windows 10 Home, Processor: Intel Celeron-J4025 (Up to 2.90 GHz), Memory: 4 GB RAM, Storage: 256 GB solid-state drive, Graphics: Intel UHD Graphics, Display Size: 54 cm (21.5), Display Resolution: 1920 x 1080, Touch Display: No, HDMI Input: Yes, USB Ports: 5, Connectivity: Wi-Fi, Ethernet and Bluetooth, Features: ModelASPIRE C22-820Size54 cm (21.5), Service Guarantee1 year warranty"),
            Desktop(name: "Apple 27-inch iMac", Image: "imac", price: "R30 000", description: "Key Features: Retina 5K Display, 3.1GHz 6‑core 10th-gen Intel Core i5, 8GB (two 4GB) of 2666MHz DDR4 Memory, 256GB SSD Storage, Radeon Pro 5300 with 4GB of GDDR6 Memory, Thunderbolt 3 Digita Video Output, Wifi And Bluetooth Enabled"),
            Desktop(name: "HP 200 G4", Image: "hp", price: "R10 000", description: "Specifications, Operating system: Windows 10 Pro 64, Processor family: 10th Generation Intel® Core™ i3 processor, Processor: Intel® Core™ i3-10110U (2.1 GHz base frequency, up to 4.1 GHz with Intel® Turbo Boost Technology, 4 MB L3 cache, 2 cores), MDA key selling point: Windows 10 Pro or other operating systems available, Form factor: All-in-one, Environmental: Low halogen, Security management: Standard security lock slot; Trusted Platform Module (TPM) 2.0, Memory: 4 GB DDR4-2666 SDRAM (1 X 4 GB), Memory layout (slots & size): 1 x 4 GB, Memory Slots: 2 SODIMM, Internal drive bays: One 3.5 HD, Internal Storage: 1 TB 7200 rpm SATA, Optical drive: HP 9.5 mm Slim DVD-Writer, Display: 54.61 cm (21.5) diagonal FHD IPS widescreen LCD anti-glare WLED-backlit, 250 nits (1920 x 1080)"),
            Desktop(name: "HP Envy 34 Curved All-in-One Desktop", Image: "hphjhhjhg", price: "R27 000", description: "Intel Core i5-8400T with TURBO BOOST to 3.30GHz (POWERFUL processor) 16 GB of RAM (SUPERIOR performance); NVIDIA GeForce GTX 1050 w/ 4GB GDDR5 dedicated & up to 10GB total video RAM 1 TB SSD Drive (HUGE pure SSD); HDMI 2.0; DVI; DisplayPort 34,  CURVED Brilliant diagonal WQHD anti-glare WLED-backlit (3440x1440) Bang & Olufsen QUAD speakers, HP Truevision FHD IR cam&mic, 802.11a/b/g/n/ac (2x2) and Bluetooth 4.2 M.2; 4xUSB 3.1; 1xUSB 3.1 Gen1; Thunderbolt 3; 3-in-1 memory card reader; Wireless keyboard/mouse"),
            Desktop(name: "RYZEN 9 3900 4.3GHz GT 710 2GB Desktop ", Image: "evetech", price: "R25 500", description: "AMD RYZEN 9 3900 (3.1GHz, 64MB GameCache, 12x Cores, 24x Threads, PCIe 4.0 Ready Turbo 4.3GHz+) CPU AMD A320 Micro-ATX AM4 DDR4 USB3.1 HDMI, AMD RYZEN Motherboard GEFORCE GT 710 2GB DirectX12 Graphics Card 16GB DDR4 2666MHz High Performance Gaming RAM 256GB NVME SSD Upto 1900MB/s + Speed Ultra-Fast Solid State Drive Standard Black Case with 400W PSU Integrated 7.1 CH HD Sound Card Gigabit LAN Card - Broadband Ready LCD and OS Optional 24 Months Warranty"),
            Desktop(name: "Asus ZenIo", Image: "P_setting_xxx_0_90_end_692", price: "15 500", description: "Asus ZenAio Core i5 8GB 256GB SSD 23.8 FHD All-in-One Desktop - White, Core i5 | 8GB | 256GB SSD | 23.8 FHD | WIN10 Pro, Intel Core i5-10500T Processor, 8GB Memory, 256GB SSD Storage, 23.8 FHD Display, Windows 10 Pro, Included Wireless silver white keyboard, Included Wireless optical mouse")
            
        ]
        DesktopData.append(contentsOf: desktops)
    }
}
