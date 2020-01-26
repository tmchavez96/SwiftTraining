//
//  SettingsViewController.swift
//  PassingInfo Assign
//
//  Created by Taylor Chavez on 1/25/20.
//  Copyright © 2020 Taylor Chavez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var newUserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func updateUsername(_ sender: Any) {
        let workerGuide:[AnyHashable:Any] = ["newUsername":newUserName.text as Any]
    NotificationCenter.default.post(name:Notification.Name(rawValue:"updateUsername"),object:nil, userInfo:  workerGuide)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
