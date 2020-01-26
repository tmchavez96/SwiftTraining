//
//  ViewController.swift
//  PassingInfo Assign
//
//  Created by Taylor Chavez on 1/25/20.
//  Copyright © 2020 Taylor Chavez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: outlets
    
    @IBOutlet weak var nameEntry: UITextField!
    
    
    //MARK: properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func LoginSubmit(_ sender: Any) {
        guard let myName = nameEntry.text else{
            return
        }
        if(myName.count < 1){
            //how to stop segue???
            print("no username xD")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextVC = segue.destination as? HomeViewController, let nextText = nameEntry.text else {return }
        nextVC.segUsername = nextText
    }
}

