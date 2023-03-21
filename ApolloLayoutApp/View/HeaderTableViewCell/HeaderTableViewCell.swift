//
//  headerTableViewCell.swift
//  layoutApp
//
//  Created by Karine Mendonça on 2023-03-14.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var headerTitleLabel: UILabel!
    @IBOutlet weak var headerImageView: UIImageView!
    
    @IBOutlet weak var headerView: UIView!
    override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)

    }
    
    func configHeaderCell() {
        headerView.backgroundColor = UIColor.black
        headerTitleLabel.text = "Store"
        headerTitleLabel.textColor = UIColor.white
        headerTitleLabel.font = UIFont(name: "Nimbus Sans Extd", size: CGFloat(24))
        headerTitleLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(24))
        headerImageView.image = UIImage(named: "avatar")
    }
}
