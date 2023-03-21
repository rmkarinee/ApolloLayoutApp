//
//  ProtectCollectionViewCell.swift
//  layoutApp
//
//  Created by Karine Mendonça on 2023-03-20.
//

import UIKit

class ProtectCollectionViewCell: UICollectionViewCell {
    static let identifier = "protectCollectionViewCell"

    
    @IBOutlet weak var divisorView: UIView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var bottomCardView: UIView!
    @IBOutlet weak var sessionCardView: UIView!
    @IBOutlet weak var titleCardLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var frontImageView: UIImageView!
    @IBOutlet weak var typeProtectTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "ProtectCollectionViewCell", bundle: nil)
    }
    
    func config(model: Model) {
        
        view.backgroundColor = .clear
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 51, green: 51, blue: 51, alpha: 0.34)
        bottomCardView.backgroundColor = .clear

        logoImageView.image = model.logo
        titleCardLabel.text = model.cardTitle
        priceLabel.text = model.protectDescription
        typeProtectTitleLabel.text = model.protectTitle
        
        switch model.contentModeImage {
        case "Top Right": backImageView.contentMode = .topRight
        case "Bottom Right": backImageView.contentMode = .bottomRight
        default:
            break
        }
        
        if let backImage = model.firstImage {
            backImageView.image = backImage
        }
        if let frontImage = model.secondImage {
            frontImageView.image = frontImage
        }
        

    }

}
