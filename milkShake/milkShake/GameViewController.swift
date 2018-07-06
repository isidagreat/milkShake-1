//
//  GameViewController.swift
//  milkShake
//
//  Created by Sruthi Suryadevara on 7/5/18.
//  Copyright © 2018 Sruthi Suryadevara. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        let scene = GameScene(size: view.frame.size)
        let skView = view as! SKView
        skView.presentScene(scene)
    }
}
