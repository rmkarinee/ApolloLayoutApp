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

    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var thirdItemImageView: UIImageView!
    @IBOutlet weak var fourthItemImageView: UIImageView!
    @IBOutlet weak var firstItemImageView: UIImageView!
    @IBOutlet weak var fifthItemImageView: UIImageView!
    @IBOutlet weak var secondItemImageView: UIImageView!
    
    @IBOutlet weak var thirdItemLabel: UILabel!
    @IBOutlet weak var fourthItemLabel: UILabel!
    @IBOutlet weak var fifthItemLabel: UILabel!
    @IBOutlet weak var firstItemLabel: UILabel!
    @IBOutlet weak var secondItemLabel: UILabel!
    @IBOutlet weak var firstItemCountView: UIView!
    @IBOutlet weak var firstItemCountLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func config(model: [TabBarModel]) {
        for item in model {
            if item.id == 1 { firstItemConfig(model: item) }
            if item.id == 2 { secondItemConfig(model: item) }
            if item.id == 3 { thirdItemConfig(model: item) }
            if item.id == 4 { fourthItemConfig(model: item) }
            if item.id == 5 { fifthItemConfig(model: item) }
        }
    }
    
    func firstItemConfig(model: TabBarModel) {
        firstItemLabel.text = model.label
        firstItemImageView.image = model.image
        if model.count != nil {
            firstItemCountView.clipsToBounds = true
            firstItemCountView.layer.cornerRadius = 11
            firstItemCountView.backgroundColor = .red
            firstItemCountLabel.text = model.count
        }
    }
    
    func secondItemConfig(model: TabBarModel) {
        secondItemLabel.text = model.label
        secondItemImageView.image = model.image
    }
    func thirdItemConfig(model: TabBarModel) {
        thirdItemLabel.text = model.label
        thirdItemImageView.image = model.image
    }
    func fourthItemConfig(model: TabBarModel) {
        fourthItemLabel.text = model.label
        fourthItemImageView.image = model.image
    }
    func fifthItemConfig(model: TabBarModel) {
        fifthItemLabel.text = model.label
        fifthItemImageView.image = model.image
    }
}
