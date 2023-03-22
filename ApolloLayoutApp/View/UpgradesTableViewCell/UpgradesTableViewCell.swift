//
//  UpgradesTableViewCell.swift
//  layoutApp
//
//  Created by Karine Mendonça on 2023-03-14.
//

import UIKit

class UpgradesTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var cardButtonLayout: UIButton!
    @IBOutlet weak var titleUpgradeLabel: UILabel!
    @IBOutlet weak var sessionTitleLabel: UILabel!
    @IBOutlet weak var upgradesSessionView: UIView!
    @IBOutlet weak var descriptionUpgradeLabel: UILabel!
    @IBOutlet weak var sessionDescriptionLabel: UILabel!
    
    @IBAction func sessionButton(_ sender: Any) {
        print("Button clicked")
    }
    
    @IBAction func cardButton(_ sender: Any) {
        print("Button clicked")
    }
    
    func configUpgradesCell() {
        upgradesSessionView.backgroundColor = UIColor.black
        upgradesSessionView.layer.cornerRadius = 16
        cardView.backgroundColor = .clear.withAlphaComponent(0.5)
        
        cardImageView.layer.cornerRadius = 16
        cardImageView.layer.borderWidth = 1
        cardImageView.layer.borderColor = CGColor(red: 51, green: 51, blue: 51, alpha: 0.34)
        cardImageView.backgroundColor = .darkGray.withAlphaComponent(0.3)
        cardImageView.image = UIImage(named: "upgradeImageCard")
        
        sessionTitleLabel.text = "Upgrades"
        sessionTitleLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(20))
        sessionTitleLabel.textColor = UIColor.white
        
        sessionDescriptionLabel.text = "Hardware & Software Updates"
        sessionDescriptionLabel.font = UIFont.systemFont(ofSize: 17)
        sessionDescriptionLabel.textColor = UIColor.white
        
        titleUpgradeLabel.text = "Phantom V3 Kit"
        titleUpgradeLabel.textColor = UIColor(red: 225, green: 225, blue: 225, alpha: 1)
        titleUpgradeLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(20))
        
        descriptionUpgradeLabel.text = "At magnum periculum adiit in oculis quidem exercitus quid ex eo delectu rerum."
        descriptionUpgradeLabel.textColor = UIColor(red: 204, green: 204, blue: 204, alpha: 1)
        descriptionUpgradeLabel.font = UIFont.systemFont(ofSize: 12)
        
        cardButtonLayout.titleLabel?.textAlignment = .center
        cardButtonLayout.titleLabel?.font = UIFont.boldSystemFont(ofSize: CGFloat(14))
        cardButtonLayout.titleLabel?.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        cardButtonLayout.backgroundColor = .orange
        cardButtonLayout.layer.cornerRadius = 15
    }
}
