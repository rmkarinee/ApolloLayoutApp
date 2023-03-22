//
//  ViewController.swift
//  layoutApp
//
//  Created by Karine Mendonça on 2023-03-13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var modelTabBar = CreateJson().createTabBarModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func registerCells() {
        self.tableView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "headerCell")
        self.tableView.register(UINib(nibName: "UpgradesTableViewCell", bundle: nil), forCellReuseIdentifier: "upgradesCell")
        
        self.tableView.register(AccessoriesTableViewCell.nib(), forCellReuseIdentifier: AccessoriesTableViewCell.identifier)
        self.tableView.register(ProtectTableViewCell.nib(), forCellReuseIdentifier: ProtectTableViewCell.identifier)
        self.tableView.register(TabBarTableViewCell.nib(), forCellReuseIdentifier: TabBarTableViewCell.identifier)
    }
}


//MARK:: TableView Delegate e DataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row == 0 {
            if let headerCell = self.tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath) as? HeaderTableViewCell {
                headerCell.selectionStyle = .none
                headerCell.configHeaderCell()
                return headerCell
            }
        }
        
        if indexPath.row == 1 {
            if let protectCell = self.tableView.dequeueReusableCell(withIdentifier: "protectCell", for: indexPath) as? ProtectTableViewCell {
                protectCell.selectionStyle = .none
                protectCell.configCell()
                return protectCell
            }
        }
        
        if indexPath.row == 2 {
            if let accessoriesCell = self.tableView.dequeueReusableCell(withIdentifier: "accessoriesCell", for: indexPath) as? AccessoriesTableViewCell {
                accessoriesCell.selectionStyle = .none
                accessoriesCell.configCell()
                return accessoriesCell
            }
        }

        if indexPath.row == 3 {
            if let upgradesCell = self.tableView.dequeueReusableCell(withIdentifier: "upgradesCell", for: indexPath) as? UpgradesTableViewCell {
                upgradesCell.selectionStyle = .none
                upgradesCell.configUpgradesCell()
                return upgradesCell
            }
        }
        
        if indexPath.row == 4 {
            if let tabBarCell = self.tableView.dequeueReusableCell(withIdentifier: "tabBarCell", for: indexPath) as? TabBarTableViewCell {
                tabBarCell.selectionStyle = .none
                tabBarCell.config(model: modelTabBar)
                return tabBarCell
            }
        }
        
        return UITableViewCell()
    }
}


