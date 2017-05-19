//
//  ViewController.swift
//  WhatsApp copy
//
//  Created by Ayush Verma on 17/03/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class chats : UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.title = "Chats"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    var names = ["Ayush","papa","Mummy","Dhiraj","harsh","prerna","Mehul","Aman","Mehul Bakar",
        "Mayank","Bhaskar"]
    
    var calls = ["+91 70107 78607","+91 70007 35407","+91 70207 22407","+91 75107 25407","+91 70347 25407","+91 75407 25407","+91 70547 25407","+91 70176 25407","+91 70146 25407","+91 701039 25407","+91 70107 25736"]
    
    var messages = ["How you Doin..??","How you Doin..??","How you Doin..??","How you Doin..??","How you Doin..??","How you Doin..??","How you Doin..??","How you Doin..??","How you Doin..??","How you Doin..??","How you Doin..??"]
    
    // or can be used in an easier method
    
    var x = [["Ayush","+91 70123 00000","How you Doin..??"],["Mehul","+91 70230 78607","How you Doin..??"],["Dhiraj","+91 72307 78607","How you Doin..??"],["Mehul Bakar","+91 70107 75673","How you Doin..??"],["Aman","+91 70234 78607","How you Doin..??"],["Bhaskar","+91 70007 70907","How you Doin..??"],["Mayank","+91 70017 70307","How you Doin..??"]]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return x.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! customChatTableViewCell
        
        cell.nameLabel.text = x[(indexPath.row)%7][0]
        cell.phoneLabel.text = x[(indexPath.row)%7][1]
        cell.messageLabel.text = x[(indexPath.row)%7][2]
        cell.timeLabel.text = "0\(arc4random()%10):\(arc4random()%60)pm"
        cell.profileImage.layer.cornerRadius = 35
        cell.profileImage.clipsToBounds = true
        cell.profileImage.backgroundColor = UIColor(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1.0)
        
        return cell
        
        
    
    }

}

