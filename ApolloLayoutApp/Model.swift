//
//  Model.swift
//  ApolloLayoutApp
//
//  Created by Karine Mendonça on 2023-03-22.
//

import Foundation
import UIKit

struct ProtectModel {
    var firstImage: UIImage?
    var secondImage: UIImage?
    var cardTitle: String
    var protectTitle: String
    var protectDescription: String
    var logo: UIImage
    var contentModeImage: String
}

struct TabBarModel {
    var image: UIImage
    var label: String
    var count: String?
    let id: Int
}
