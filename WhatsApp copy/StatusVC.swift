//
//  StatusVC.swift
//  WhatsApp copy
//
//  Created by Ayush Verma on 19/03/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class StatusVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    var names = ["Ayush","papa","Mummy","Dhiraj","harsh","prerna","Mehul","Aman","Mehul Bakar",
                 "Mayank","Bhaskar"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! statusCustomCell
        
        cell.statusImage.backgroundColor = UIColor(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1.0)
        cell.nameLabel.text = names[indexPath.row]
        cell.timeLabel.text = "0\(arc4random() % 10) : \(arc4random() % 60) pm"
        cell.statusImage.layer.cornerRadius = 35.0
        cell.statusImage.clipsToBounds = true
        
        return cell
        
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    
    

}
