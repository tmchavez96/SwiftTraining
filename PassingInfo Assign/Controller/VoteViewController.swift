//
//  VoteViewController.swift
//  PassingInfo Assign
//
//  Created by Taylor Chavez on 1/25/20.
//  Copyright © 2020 Taylor Chavez. All rights reserved.
//

import UIKit

protocol updateCount: class{
    func passVote(teamName: String)
}

class VoteViewController: UIViewController {

    weak var worker: updateCount?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func coolCatVoted(_ sender: UIButton) {
        worker?.passVote(teamName: "coolCats")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func siliconalleyVoted(_ sender: UIButton) {
        worker?.passVote(teamName: "pp")
        dismiss(animated: true, completion: nil)
    }
    
}
