//
//  HomeViewController.swift
//  PassingInfo Assign
//
//  Created by Taylor Chavez on 1/25/20.
//  Copyright © 2020 Taylor Chavez. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    
    //MARK: outlets
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var svCounter: UILabel!
    @IBOutlet weak var ccCounter: UILabel!
    
    var segUsername:String!
    var svC:Int = 1
    var ccC:Int = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.text = "Welcome \(segUsername ??  " ")"
        svCounter.text = "\(svC)"
        ccCounter.text = "\(ccC)"
        
        
    NotificationCenter.default.addObserver(forName:Notification.Name("updateUsername"),object: nil, queue: .main) { [weak self] note in
        guard let noteDict =  note.userInfo, let newName = noteDict["newUsername"] else {return}
        self?.segUsername = newName as? String
        self?.username.text = "Welcome \(self?.segUsername ??  " ")"
        }
    }
    
    @IBAction func voteButtonPushed(_ sender: Any) {
        let voteVC = storyboard?.instantiateViewController(withIdentifier: "VoteViewController") as! VoteViewController
        voteVC.worker = self
        present(voteVC, animated: true, completion: nil)
        
    }
    

    @IBAction func SettingButtonPushed(_ sender: Any) {
         let settingsVC = storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
               present(settingsVC, animated: true, completion: nil)
    }
}


extension HomeViewController: updateCount{
    func passVote(teamName: String){
        if(teamName == "pp"){
            svC += 1
            svCounter.text = "\(svC)"
        }else{
            ccC += 1
            ccCounter.text = "\(ccC)"
        }
    }
}
