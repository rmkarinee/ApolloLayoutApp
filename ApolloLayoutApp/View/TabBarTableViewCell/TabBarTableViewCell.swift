//
//  TabBarTableViewCell.swift
//  layoutApp
//
//  Created by Karine Mendonça on 2023-03-21.
//

import UIKit

class TabBarTableViewCell: UITableViewCell {
    
    static var identifier = "tabBarCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "TabBarTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
