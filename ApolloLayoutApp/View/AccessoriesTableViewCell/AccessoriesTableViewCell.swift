//
//  AccessoriesTableViewCell.swift
//  layoutApp
//
//  Created by Karine Mendonça on 2023-03-15.
//

import UIKit

class AccessoriesTableViewCell: UITableViewCell {
    
    static let identifier = "accessoriesCell"
    
    @IBOutlet weak var sessionTitleLabel: UILabel!
    @IBOutlet weak var sessionDescriptionLabel: UILabel!
    @IBOutlet weak var sessionButton: UIButton!
    @IBOutlet weak var sessionAccessoriesView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static func nib() -> UINib {
        return UINib(nibName: "AccessoriesTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        collectionView.register(AccessoriesCollectionViewCell.nib(), forCellWithReuseIdentifier: AccessoriesCollectionViewCell.identifier)
        
        collectionView.dataSource = self
        collectionView.delegate  = self

    }
    
    func configCell() {
        
        sessionAccessoriesView.backgroundColor = UIColor.black
        collectionView.backgroundColor = UIColor.clear

        sessionTitleLabel.text = "Accessories"
        sessionTitleLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(20))
        sessionTitleLabel.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)

        sessionDescriptionLabel.text  = "Buy new great stuff for your scooter"
        sessionDescriptionLabel.font = UIFont.systemFont(ofSize: 17)
//        sessionDescriptionLabel.textColor = UIColor(red: 204, green: 204, blue: 204, alpha: 1)
    }
    
}

extension AccessoriesTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AccessoriesCollectionViewCell.identifier, for: indexPath) as! AccessoriesCollectionViewCell
        
        cell.configCollectionCell()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 242, height: 337)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(15)
    }

}
