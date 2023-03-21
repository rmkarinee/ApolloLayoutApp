//
//  AccessoriesCollectionViewCell.swift
//  layoutApp
//
//  Created by Karine Mendonça on 2023-03-15.
//

import UIKit

class AccessoriesCollectionViewCell: UICollectionViewCell {

    static let identifier = "accessoriesCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "AccessoriesCollectionViewCell", bundle: nil)
    }
 
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var titleCardLabel: UILabel!
    @IBOutlet weak var buttonCardLabel: UIButton!
    @IBOutlet weak var descriptionCardLabel: UILabel!
    @IBAction func buttonCard(_ sender: Any) {
        print("Button was pressed")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCollectionCell() {
        self.backgroundColor = .black
        self.layer.cornerRadius = 16
        self.layer.borderWidth = 1
        self.layer.borderColor = CGColor(red: 51, green: 51, blue: 51, alpha: 0.34)
        
        titleCardLabel.text = "Apollo Bag"
        titleCardLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleCardLabel.textColor = UIColor.white
        
        descriptionCardLabel.text = "Some interesting description here"
        descriptionCardLabel.numberOfLines = 0
        descriptionCardLabel.font = UIFont.systemFont(ofSize: 12)
        
        buttonCardLabel.setTitle("Buy", for: .normal)
        buttonCardLabel.setTitleColor(UIColor(red: 255, green: 255, blue: 255, alpha: 1), for: .normal)
        buttonCardLabel.layer.cornerRadius = 15
        buttonCardLabel.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        priceLabel.text = "$19.99 USD"
        priceLabel.font = UIFont.systemFont(ofSize: 12)
        
    }
}
