//
//  ViewController.swift
//  ColdCall
//
//  Created by Sruthi Suryadevara on 7/3/18.
//  Copyright © 2018 Sruthi Suryadevara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numLabel: UILabel!
    
    let names = ["Ready?","Jay","Uyanag","Cody","Courtney","Bryant","Jimmy"]
    var textIndex = 0
    
    @IBAction func nameCallButton(_ sender: UIButton) {
        numLabel.isHidden = false
        textIndex = Int(arc4random_uniform(6) + 1)
        numLabel.text = String(textIndex)
        if textIndex == 1 || textIndex == 2{
            numLabel.textColor = .red
        }
        else if textIndex == 3 || textIndex == 4 {
            numLabel.textColor = .orange
        }
        else if textIndex == 5 || textIndex == 6{
            numLabel.textColor = .green
        }
        nameLabel.text = names[textIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = names[0]
        numLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }


}

