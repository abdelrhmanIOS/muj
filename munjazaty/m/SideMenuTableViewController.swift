//
//  SideMenuTableViewController.swift
//  SideMenu
//
//  Created by Jon Kent on 4/5/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import SideMenu

class SideMenuTableViewController: UITableViewController {
    @IBOutlet weak var login: UITableViewVibrantCell!
    @IBOutlet weak var add: UITableViewVibrantCell!
    @IBOutlet weak var pass: UITableViewVibrantCell!
    @IBOutlet weak var logout: UITableViewVibrantCell!
    
    
     let defult =  UserDefaults.standard
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (defult.object(forKey: "userid") != nil) {
            login.isHidden = true
            tableView.reloadData()
        }else{
            login.isHidden = false
            logout.isHidden = true
            add.isHidden = true
            logout.isHidden = true
        tableView.reloadData()
        }
        // refresh cell blur effect in case it changed
        tableView.reloadData()
        
        guard SideMenuManager.default.menuBlurEffectStyle == nil else {
            return
        }
        
        // Set up a cool background image for demo purposes
        let imageView = UIImageView(image: UIImage(named: "saturn"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        tableView.backgroundView = imageView
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath) as! UITableViewVibrantCell
        
        cell.blurEffectStyle = SideMenuManager.default.menuBlurEffectStyle
        
        return cell
    }
    
}
