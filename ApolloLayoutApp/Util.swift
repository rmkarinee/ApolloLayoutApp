//
//  Util.swift
//  ApolloLayoutApp
//
//  Created by Karine Mendonça on 2023-03-22.
//

import Foundation
import UIKit

class CreateJson {
    
    var modelTabBar: [TabBarModel] = []
    var modelProtect: [ProtectModel] = []
    
    func createTabBarModel() -> [TabBarModel] {
        modelTabBar.append(TabBarModel(
            image: UIImage(named: "home")!,
            label: "Home",
            count: "2",
            id: 1))
        modelTabBar.append(TabBarModel(
            image: UIImage(named: "ride list")!,
            label: "Ride List",
            id: 2))
        modelTabBar.append(TabBarModel(
            image: UIImage(named: "map")!,
            label: "Map",
            id: 3))
        modelTabBar.append(TabBarModel(
            image: UIImage(named: "store")!,
            label: "Store",
            id: 4))
        modelTabBar.append(TabBarModel(
            image: UIImage(named: "settings")!,
            label: "Settings",
            id: 5))
        
        return modelTabBar
    }
    
    func createProtectModel() -> [ProtectModel] {
        modelProtect.append(ProtectModel(
            firstImage: UIImage(named: "Ellipse1"),
            cardTitle: "THEFT AND LOSS",
            protectTitle: "Apollo Care + Theft and Loss",
            protectDescription: "$129 USD or $6.99/mo.",
            logo: UIImage(named: "logo")!,
            contentModeImage: "Top Right"))
        
        modelProtect.append(ProtectModel(
            firstImage: UIImage(named: "Ellipse2"),
            secondImage: UIImage(named: "protectFoto"),
            cardTitle: "APOLLO CARE",
            protectTitle: "Apollo Care",
            protectDescription: "$129 USD or $6.99/mo.",
            logo: UIImage(named: "logo")!,
            contentModeImage: "Bottom Right"))
        
        return modelProtect
    }
        
}

