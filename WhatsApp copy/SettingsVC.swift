//
//  SettingsVC.swift
//  WhatsApp copy
//
//  Created by Ayush Verma on 19/03/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    var settingData = [["Ayush Verma"],["Starred Messages","Whatsapp Web/Desktop"],["Account","Chats","Notifications","Data and Storage Usage"],["About and Help","Tell a Friend"]]
    
    var icons = ["S1.png","S2.png","S3.png","S4.png","S5.png","S6.png","S7.png","S8.png"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingData[section].count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 73
        }
        else{
            return 44
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! settingCustomCell
        
        cell.settingLabel.text = settingData[indexPath.section][indexPath.row]
        
        cell.settingImage.backgroundColor = UIColor(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1.0)
        
        if indexPath.section == 0{
            cell.settingImage.layer.cornerRadius = 29.25
        }
        else{
            cell.settingImage.layer.cornerRadius = 7
        }
        
        cell.settingImage.clipsToBounds = true
        
        return cell
    }
    

    
}
