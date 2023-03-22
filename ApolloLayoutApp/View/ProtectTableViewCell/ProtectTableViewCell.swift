//
//  ProtectTableViewCell.swift
//  layoutApp
//
//  Created by Karine Mendonça on 2023-03-20.
//

import UIKit

class ProtectTableViewCell: UITableViewCell {
    
    static let identifier = "protectCell"
    
    var model = CreateJson().createProtectModel()

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var protectView: UIView!
    @IBOutlet weak var protectTitleLable: UILabel!
    @IBOutlet weak var protectViewSession: UIView!
    @IBOutlet weak var protectDescriptionLable: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(ProtectCollectionViewCell.nib(), forCellWithReuseIdentifier: ProtectCollectionViewCell.identifier)
        
        collectionView.dataSource = self
        collectionView.delegate  = self
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "ProtectTableViewCell", bundle: nil)
    }
    
    func configCell() {
        
        protectView.backgroundColor = UIColor.clear
        collectionView.backgroundColor = UIColor.clear

        protectTitleLable.text = "Apollo Care & Protect"
        protectTitleLable.font = UIFont.systemFont(ofSize: 20)
        
        protectDescriptionLable.text  = "Protect your new scooter"
        protectDescriptionLable.font = UIFont.systemFont(ofSize: 12)
    }
}

//MARK:: TableView Delegate e DataSource

extension ProtectTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProtectCollectionViewCell.identifier, for: indexPath) as! ProtectCollectionViewCell
        cell.config(model: model[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 242, height: 337)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(15)
    }

}

