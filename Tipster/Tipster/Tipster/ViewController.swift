//
//  ViewController.swift
//  Tipster
//
//  Created by Sruthi Suryadevara on 7/4/18.
//  Copyright © 2018 Sruthi Suryadevara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var addText : String!
    var perChange,perChange1,perChange2 :Double!
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var groupSizeLabel: UILabel!
    
    @IBOutlet var percentagesLabel: [UILabel]!
    
    @IBOutlet var changeLabel: [UILabel]!
    
    @IBOutlet var totalLabel: [UILabel]!
    
    @IBAction func numbers(_ sender: UIButton) {
        if sender.tag == 10{
            if displayLabel.text != ""
            {
                addText = "0"
                displayLabel.text = displayLabel.text! + addText
            }
        }
        else if sender.tag == 12{
            addText = "."
            displayLabel.text = displayLabel.text! + addText
        }
        else{
            displayLabel.text = displayLabel.text! + String(sender.tag)
        }
        
    }
    @IBAction func tipSlider(_ sender: UISlider) {
        
        percentagesLabel[0].text = "\(Int(sender.value))%"
        percentagesLabel[1].text = "\(Int(sender.value)+5)%"
        percentagesLabel[2].text = "\(Int(sender.value)+10)%"
        
        if displayLabel.text != nil{
            perChange = (Double(displayLabel.text!)! *  Double(sender.value) / 100)
            
            changeLabel[0].text = String((perChange * 10000).rounded() / 10000)
            
            perChange1 = (Double(displayLabel.text!)! *  Double(sender.value + 5) / 100)
            changeLabel[1].text = String((perChange1 * 10000).rounded() / 10000)
            
            perChange2 = (Double(displayLabel.text!)! *  Double(sender.value + 10) / 100)
            
            changeLabel[2].text = String((perChange2 * 10000).rounded() / 10000)
            
            totalLabel[2].text = String(Double(displayLabel.text!)! + ((perChange * 10000).rounded() / 10000))
            
            
            totalLabel[1].text = String(Double(displayLabel.text!)! + ((perChange1 * 10000).rounded() / 10000))
            
            totalLabel[0].text = String(Double(displayLabel.text!)! + ((perChange2 * 10000).rounded() / 10000))
            
        }
    }
    
    @IBAction func groupSlider(_ sender: UISlider) {
        groupSizeLabel.text = "Group Size \(Int(sender.value))"
        if changeLabel != nil{
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

