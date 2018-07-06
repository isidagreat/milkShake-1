//
//  ViewController.swift
//  TTT
//
//  Created by Sruthi Suryadevara on 7/3/18.
//  Copyright © 2018 Sruthi Suryadevara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var player = 1
    var newArr = [Int : String]()
    var gameActive = true
    
    @IBAction func resetgame(_ sender: UIButton) {
        gameActive = true
        newArr.removeAll()
        
        winnerLabel.isHidden = true
        for i in 1...9{
            let button = view.viewWithTag(i) as! UIButton
            button.backgroundColor = .gray
        }
        
    }
    @IBAction func gameButton(_ sender: UIButton) {
        if newArr[sender.tag] == nil && gameActive == true{
            if player == 1{
                sender.backgroundColor = .red
                newArr[sender.tag] = "red"
                player = 2
            }
            else {
                sender.backgroundColor = .blue
                newArr[sender.tag] = "blue"
                player = 1
            }
        }
        print(newArr)
        if newArr[1] != nil && newArr[1] == newArr[2] && newArr[2] == newArr[3]{
            winnerLabel.text = "Player \(newArr[2]!) Wins"
            gameActive = false
            winnerLabel.isHidden = false
        }
        if newArr[4] != nil && newArr[4] == newArr[5] && newArr[5] == newArr[6]{
            winnerLabel.text = "Player \(newArr[5]!) Wins"
            gameActive = false
            winnerLabel.isHidden = false
            
        }
        if newArr[7] != nil && newArr[7] == newArr[8] && newArr[8] == newArr[9]{
            winnerLabel.text = "Player \(newArr[8]!) Wins"
            gameActive = false
            winnerLabel.isHidden = false
        }
        if newArr[1] != nil && newArr[1] == newArr[4] && newArr[4] == newArr[7]{
            winnerLabel.text = "Player \(newArr[4]!) Wins"
            gameActive = false
            winnerLabel.isHidden = false
        }
        if newArr[2] != nil && newArr[2] == newArr[5] && newArr[5] == newArr[8]{
            winnerLabel.text = "Player \(newArr[5]!) Wins"
            gameActive = false
            winnerLabel.isHidden = false
        }
        if newArr[3] != nil && newArr[3] == newArr[6] && newArr[6] == newArr[7]{
            winnerLabel.text = "Player \(newArr[6]!) Wins"
            gameActive = false
            winnerLabel.isHidden = false
        }
        if newArr[1] != nil && newArr[1] == newArr[5] && newArr[5] == newArr[9]{
            winnerLabel.text = "Player \(newArr[5]!) Wins"
            gameActive = false
            winnerLabel.isHidden = false
        }
        if newArr[3] != nil && newArr[3] == newArr[5] && newArr[5] == newArr[7]{
            winnerLabel.text = "Player \(newArr[5]!) Wins"
            gameActive = false
            winnerLabel.isHidden = false
        }
        if newArr.count == 9{
            gameActive = false
            winnerLabel.text = "Its a Draw!"
            winnerLabel.isHidden = false
            
        }

    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.isHidden = true
     // Do any additional setup after loading the view, typically from a nib.
    }

}



